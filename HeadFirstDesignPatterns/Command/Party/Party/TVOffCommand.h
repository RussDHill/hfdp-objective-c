//
//  TVOffCommand.h
//  Party
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class TV;

@interface TVOffCommand : NSObject<Command>
{
    TV* _tv;
}
- (id)initWithTV: (TV*)tv;
- (void)execute;
- (void)undo;
@end

