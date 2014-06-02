//
//  main.m
//  Undo
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CeilingFan.h"
#import "Light.h"
#import "CeilingFanOffCommand.h"
#import "CeilingFanHighCommand.h"
#import "CeilingFanMediumCommand.h"
#import "CeilingFanLowCommand.h"
#import "DimmerLightOffCommand.h"
#import "DimmerLightOnCommand.h"
#import "LightOffCommand.h"
#import "LightOnCommand.h"
#import "RemoteControlWithUndo.h"
#import "NoCommand.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        RemoteControlWithUndo* remoteControl = [RemoteControlWithUndo new];
        
        Light* livingRoomLight = [[Light alloc] initWithLocation: @"Living Room"];
        
        LightOnCommand* livingRoomLightOn =
        [[LightOnCommand alloc] initWithLight: livingRoomLight];
        LightOffCommand* livingRoomLightOff =
        [[LightOffCommand alloc] initWithLight: livingRoomLight];
        
        [remoteControl setCommand: 0 : livingRoomLightOn : livingRoomLightOff];
        
        [remoteControl onButtonWasPushed: 0];
        [remoteControl offButtonWasPushed: 0];
        
        NSLog(@"%@", remoteControl);
        [remoteControl undoButtonWasPushed];
        [remoteControl onButtonWasPushed: 0];
        [remoteControl offButtonWasPushed: 0];
        
        NSLog(@"%@", remoteControl);
        [remoteControl undoButtonWasPushed];        
        
        CeilingFan* ceilingFan = [[CeilingFan alloc] initWithLocation: @"Living Room"];
        CeilingFanMediumCommand* ceilingFanMedium =
        [[CeilingFanMediumCommand alloc] initWithCeilingFan: ceilingFan];
        CeilingFanHighCommand* ceilingFanHigh =
        [[CeilingFanHighCommand alloc] initWithCeilingFan: ceilingFan];
        CeilingFanOffCommand* ceilingFanOff =
        [[CeilingFanOffCommand alloc] initWithCeilingFan: ceilingFan];
       
        [remoteControl setCommand: 1 : ceilingFanMedium : ceilingFanOff];
        [remoteControl setCommand: 2 : ceilingFanHigh : ceilingFanOff];
        
        [remoteControl onButtonWasPushed: 1];
        [remoteControl offButtonWasPushed: 1];
        
        NSLog(@"%@", remoteControl);
        [remoteControl undoButtonWasPushed];
        
        [remoteControl onButtonWasPushed: 2];
        
        NSLog(@"%@", remoteControl);
        [remoteControl undoButtonWasPushed];
     }
    return 0;
}

