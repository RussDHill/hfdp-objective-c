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
    int _prevSpeed;
}
- (id)initWithCeilingFan: (CeilingFan*)ceilingFan;
- (void)execute;
- (void)undo;
@end


