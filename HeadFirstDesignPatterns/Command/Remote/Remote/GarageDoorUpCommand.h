//
//  GarageDoorUpCommand.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@class GarageDoor;

@interface GarageDoorUpCommand : NSObject<Command>
{
    GarageDoor* _garageDoor;
}
- (id)initWithGarageDoor: (GarageDoor*)garageDoor;
- (void)execute;
- (NSString*)description;
@end

