//
//  MacroCommand.m
//  Party
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "MacroCommand.h"

@implementation MacroCommand

- (id)initWithCommands: (NSMutableArray*)commands {
    if (!(self = [super init]))
		return nil;
	
	_commands = commands;
	
	return self;}

- (void)execute {
    for (id command in _commands) {
        [command execute];
    }
}

- (void)undo {
    for (id command in _commands) {
        [command undo];
    }
}
@end

