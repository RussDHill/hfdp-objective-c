//
//  RemoteControl.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Command;

@interface RemoteControl : NSObject
{
    id<Command> _noCommand;
    NSMutableArray* _onCommands;
    NSMutableArray* _offCommands;
}
- (void)setCommand: (int)slot : (id<Command>)onCommand : (id<Command>)offCommand;
- (void)onButtonWasPushed: (int)slot;
- (void)offButtonWasPushed: (int)slot;
- (NSString*)description;
@end
