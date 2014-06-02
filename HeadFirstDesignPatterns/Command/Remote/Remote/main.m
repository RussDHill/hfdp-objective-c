//
//  main.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CeilingFan.h"
#import "GarageDoor.h"
#import "Hottub.h"
#import "Light.h"
#import "Stereo.h"
#import "CeilingFanOffCommand.h"
#import "CeilingFanOnCommand.h"
#import "GarageDoorDownCommand.h"
#import "GarageDoorUpCommand.h"
#import "HottubOffCommand.h"
#import "HottubOnCommand.h"
#import "LightOffCommand.h"
#import "LightOnCommand.h"
#import "LivingroomLightOffCommand.h"
#import "LivingroomLightOnCommand.h"
#import "StereoOffCommand.h"
#import "StereoOnWithCDCommand.h"
#import "RemoteControl.h"
#import "NoCommand.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        RemoteControl* remoteControl = [[RemoteControl alloc] init];
        
        Light* livingRoomLight = [[Light alloc] initWithLocation: @"Living Room"];
        Light* kitchenLight = [[Light alloc] initWithLocation: @"Kitchen"];
        CeilingFan* ceilingFan = [[CeilingFan alloc] initWithLocation: @"Living Room"];
        GarageDoor* garageDoor = [[GarageDoor alloc] initWithLocation: @""];
        Stereo* stereo = [[Stereo alloc] initWithLocation: @"Living Room"];
        
        LightOnCommand* livingRoomLightOn =
        [[LightOnCommand alloc] initWithLight: livingRoomLight];
        LightOffCommand* livingRoomLightOff =
        [[LightOffCommand alloc] initWithLight: livingRoomLight];
        LightOnCommand* kitchenLightOn =
        [[LightOnCommand alloc] initWithLight: kitchenLight];
        LightOffCommand* kitchenLightOff =
        [[LightOffCommand alloc] initWithLight: kitchenLight];
        
        CeilingFanOnCommand* ceilingFanOn =
        [[CeilingFanOnCommand alloc] initWithCeilingFan: ceilingFan];
        CeilingFanOffCommand* ceilingFanOff =
        [[CeilingFanOffCommand alloc] initWithCeilingFan: ceilingFan];
        
        GarageDoorUpCommand* garageDoorUp =
        [[GarageDoorUpCommand alloc] initWithGarageDoor: garageDoor];
        GarageDoorDownCommand* garageDoorDown =
        [[GarageDoorDownCommand alloc] initWithGarageDoor: garageDoor];
        
        StereoOnWithCDCommand* stereoOnWithCD =
        [[StereoOnWithCDCommand alloc] initWithStereo: stereo];
        StereoOffCommand* stereoOff =
        [[StereoOffCommand alloc] initWithStereo: stereo];
        
        [remoteControl setCommand: 0 : livingRoomLightOn : livingRoomLightOff];
        [remoteControl setCommand: 1 : kitchenLightOn : kitchenLightOff];
        [remoteControl setCommand: 2 : ceilingFanOn : ceilingFanOff];
        [remoteControl setCommand: 3 : stereoOnWithCD : stereoOff];
        
        NSLog(@"%@", remoteControl);
        
        [remoteControl onButtonWasPushed: 0];
        [remoteControl offButtonWasPushed: 0];
        [remoteControl onButtonWasPushed: 1];
        [remoteControl offButtonWasPushed: 1];
        [remoteControl onButtonWasPushed: 2];
        [remoteControl offButtonWasPushed: 2];
        [remoteControl onButtonWasPushed: 3];
        [remoteControl offButtonWasPushed: 3];
        
    }
    return 0;
}

