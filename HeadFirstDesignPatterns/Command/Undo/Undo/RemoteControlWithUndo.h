//
//  RemoteControlWithUndo.h
//  Undo
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Command;

@interface RemoteControlWithUndo : NSObject
{
    id<Command> _noCommand;
    id<Command> _undoCommand;
    NSMutableArray* _onCommands;
    NSMutableArray* _offCommands;
}
- (void)setCommand: (int)slot : (id<Command>)onCommand : (id<Command>)offCommand;
- (void)onButtonWasPushed: (int)slot;
- (void)offButtonWasPushed: (int)slot;
- (void)undoButtonWasPushed;
- (NSString*)description;
@end
