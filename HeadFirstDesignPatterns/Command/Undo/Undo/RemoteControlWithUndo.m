//
//  RemoteControlWithUndo.m
//  Undo
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "RemoteControlWithUndo.h"
#import "Command.h"
#import "NoCommand.h"

@implementation RemoteControlWithUndo

- (id)init {
	if (!(self = [super init]))
		return nil;
	
    _noCommand = [NoCommand new];
    _onCommands = [NSMutableArray new];
    _offCommands = [NSMutableArray new];
    _undoCommand = _noCommand;
    
	for (int i=0;i<7;i++) {
        [_onCommands addObject: _noCommand];
        [_offCommands addObject: _noCommand];
	}
    
	return self;
}

- (void)setCommand: (int)slot : (id<Command>)onCommand : (id<Command>)offCommand {
    _onCommands[slot] = onCommand;
	_offCommands[slot] = offCommand;
}

- (void)onButtonWasPushed: (int)slot {
    [_onCommands[slot] execute];
    _undoCommand = _onCommands[slot];
}

- (void)offButtonWasPushed: (int)slot {
    [_offCommands[slot] execute];
    _undoCommand = _offCommands[slot];
}

- (void)undoButtonWasPushed {
    [_undoCommand undo];
}

- (NSString*)description {
    NSString* stringBuff = @"\r------ Remote Control -------\r";
    
	for (int i=0;i<[_onCommands count];i++) {
        stringBuff = [stringBuff stringByAppendingFormat: @"[slot %i]\t%@\t%@\r", i,
                      NSStringFromClass([_onCommands[i] class]), NSStringFromClass([_offCommands[i] class])];
	}
    stringBuff = [stringBuff stringByAppendingFormat: @"[undo]%@\r", NSStringFromClass([_undoCommand class])];
    
	return stringBuff;
}

@end
