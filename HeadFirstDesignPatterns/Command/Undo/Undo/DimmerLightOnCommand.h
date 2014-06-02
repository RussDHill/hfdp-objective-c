//
//  DimmerLightOnCommand.h
//  Undo
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class Light;

@interface DimmerLightOnCommand : NSObject<Command>
{
    Light* _light;
    int _prevLevel;
}
- (id)initWithLight: (Light*)light;
- (void)execute;
- (void)undo;
@end

