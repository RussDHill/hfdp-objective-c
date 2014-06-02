//
//  HottubOnCommand.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class Hottub;

@interface HottubOnCommand : NSObject<Command>
{
    Hottub* _hottub;
}
- (id)initWithHottub: (Hottub*)hottub;
- (void)execute;
- (NSString*)description;
@end

