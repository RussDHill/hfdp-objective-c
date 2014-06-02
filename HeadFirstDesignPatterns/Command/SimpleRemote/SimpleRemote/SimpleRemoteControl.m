//
//  SimpleRemoteControl.m
//  SimpleRemote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "SimpleRemoteControl.h"
#import "Command.h"

@implementation SimpleRemoteControl

- (void)setCommand: (id<Command>)command {
    _slot = command;
}
- (void)buttonWasPressed {
    [_slot execute];
}
@end
