//
//  LightOffCommand.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class Light;

@interface LightOffCommand : NSObject<Command>
{
    Light* _light;
}
- (id)initWithLight: (Light*)light;
- (void)execute;
- (void)undo;
@end
