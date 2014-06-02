//
//  MacroCommand.h
//  Party
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface MacroCommand : NSObject<Command>
{
    NSMutableArray* _commands;
}
- (id)initWithCommands: (NSMutableArray*)commands;
- (void)execute;
- (void)undo;
@end
