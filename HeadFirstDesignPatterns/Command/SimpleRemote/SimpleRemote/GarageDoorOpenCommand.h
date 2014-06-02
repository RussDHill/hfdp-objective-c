//
//  GarageDoorOpenCommand.h
//  SimpleRemote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@class GarageDoor;

@interface GarageDoorOpenCommand : NSObject<Command>
{
    GarageDoor* _garageDoor;
}
- (id)initWithGarageDoor: (GarageDoor*)garageDoor;
- (void)execute;
@end