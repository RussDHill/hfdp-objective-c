//
//  RemoteControl.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "RemoteControl.h"
#import "Command.h"
#import "NoCommand.h"

@implementation RemoteControl

- (id)init {
	if (!(self = [super init]))
		return nil;
	
    id<Command> noCommand = [NoCommand new];
    _onCommands = [NSMutableArray new];
    _offCommands = [NSMutableArray new];

	for (int i=0;i<7;i++) {
        [_onCommands addObject: noCommand];
        [_offCommands addObject: noCommand];
	}
    _undoCommand = noCommand;

	return self;
}

- (void)setCommand: (int)slot : (id<Command>)onCommand : (id<Command>)offCommand {
    _onCommands[slot] = onCommand;
	_offCommands[slot] = offCommand;
}

- (void)onButtonWasPushed: (int)slot {
    [_onCommands[slot] execute];
}

- (void)offButtonWasPushed: (int)slot {
    [_offCommands[slot] execute];
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
