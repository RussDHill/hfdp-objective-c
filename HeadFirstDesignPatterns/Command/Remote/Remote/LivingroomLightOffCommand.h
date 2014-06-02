//
//  LivingroomLightOffCommand.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class Light;

@interface LivingroomLightOffCommand : NSObject<Command>
{
    Light* _light;
}
- (id)initWithLight: (Light*)light;
- (void)execute;
- (NSString*)description;
@end

