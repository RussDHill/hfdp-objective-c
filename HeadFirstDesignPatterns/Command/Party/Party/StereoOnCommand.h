//
//  StereoOnCommand.h
//  Party
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class Stereo;

@interface StereoOnCommand : NSObject<Command>
{
    Stereo* _stereo;
}
- (id)initWithStereo: (Stereo*)stereo;
- (void)execute;
- (void)undo;
@end

