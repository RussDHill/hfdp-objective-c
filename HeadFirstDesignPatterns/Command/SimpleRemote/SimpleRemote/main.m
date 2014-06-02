//
//  main.m
//  SimpleRemote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleRemoteControl.h"
#import "Light.h"
#import "LightOnCommand.h"
#import "GarageDoor.h"
#import "GarageDoorOpenCommand.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        SimpleRemoteControl* remote = [[SimpleRemoteControl alloc] init];
        Light* light = [[Light alloc] init];
        GarageDoor* garageDoor = [[GarageDoor alloc] init];
        
        LightOnCommand* lightOn = [[LightOnCommand alloc] initWithLight: light];
        GarageDoorOpenCommand* garageOpen = [[GarageDoorOpenCommand alloc] initWithGarageDoor: garageDoor];
        
        [remote setCommand: lightOn];
        [remote buttonWasPressed];
        [remote setCommand: garageOpen];
        [remote buttonWasPressed];
        
    }
    return 0;
}

