//
//  LightOnCommand.h
//  SimpleRemote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class Light;

@interface LightOnCommand : NSObject<Command>
{
    Light* _light;
}
- (id)initWithLight: (Light*)light;
- (void)execute;
@end