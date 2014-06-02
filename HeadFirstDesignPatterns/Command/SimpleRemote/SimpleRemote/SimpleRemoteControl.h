//
//  SimpleRemoteControl.h
//  SimpleRemote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Command;

@interface SimpleRemoteControl : NSObject
{
    id<Command> _slot;
}
- (void)setCommand: (id<Command>)command;
- (void)buttonWasPressed;
@end
