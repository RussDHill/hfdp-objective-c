//
//  CeilingFanOffCommand.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class CeilingFan;

@interface CeilingFanOffCommand : NSObject<Command>
{
    CeilingFan* _ceilingFan;
}
- (id)initWithCeilingFan: (CeilingFan*)ceilingFan;
- (void)execute;
- (NSString*)description;
@end


