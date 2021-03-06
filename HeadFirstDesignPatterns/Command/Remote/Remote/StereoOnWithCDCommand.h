//
//  StereoOnWithCDCommand.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@class Stereo;

@interface StereoOnWithCDCommand : NSObject<Command>
{
    Stereo* _stereo;
}
- (id)initWithStereo: (Stereo*)stereo;
- (void)execute;
- (NSString*)description;
@end

