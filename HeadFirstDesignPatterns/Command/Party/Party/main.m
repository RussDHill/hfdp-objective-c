//
//  main.m
//  Party
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CeilingFan.h"
#import "Light.h"
#import "Hottub.h"
#import "Stereo.h"
#import "TV.h"
#import "CeilingFanOffCommand.h"
#import "CeilingFanHighCommand.h"
#import "CeilingFanMediumCommand.h"
#import "LightOffCommand.h"
#import "LightOnCommand.h"
#import "StereoOffCommand.h"
#import "StereoOnCommand.h"
#import "TVOffCommand.h"
#import "TVOnCommand.h"
#import "HottubOffCommand.h"
#import "HottubOnCommand.h"
#import "MacroCommand.h"
#import "RemoteControl.h"
#import "NoCommand.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
                
        RemoteControl* remoteControl = [RemoteControl new];
        
        Light* light = [[Light alloc] initWithLocation: @"Living Room"];
        TV* tv = [[TV alloc] initWithLocation: @"Living Room"];
        Stereo* stereo = [[Stereo alloc] initWithLocation: @"Living Room"];
        Hottub* hottub = [Hottub new];
        
        LightOnCommand* lightOn = [[LightOnCommand alloc] initWithLight: light];
        StereoOnCommand* stereoOn = [[StereoOnCommand alloc] initWithStereo: stereo];
        TVOnCommand* tvOn = [[TVOnCommand alloc] initWithTV: tv];
        HottubOnCommand* hottubOn = [[HottubOnCommand alloc] initWithHottub: hottub];
        LightOffCommand* lightOff = [[LightOffCommand alloc] initWithLight: light];
        StereoOffCommand* stereoOff = [[StereoOffCommand alloc] initWithStereo: stereo];
        TVOffCommand* tvOff = [[TVOffCommand alloc] initWithTV: tv];
        HottubOffCommand* hottubOff = [[HottubOffCommand alloc] initWithHottub: hottub];

        NSMutableArray* partyOn = [[NSMutableArray alloc] initWithObjects: lightOn, stereoOn, tvOn, hottubOn, nil];
        NSMutableArray* partyOff = [[NSMutableArray alloc] initWithObjects: lightOff, stereoOff, tvOff, hottubOff, nil];
        
        MacroCommand* partyOnMacro = [[MacroCommand alloc] initWithCommands: partyOn];
        MacroCommand* partyOffMacro = [[MacroCommand alloc] initWithCommands: partyOff];
        
        [remoteControl setCommand: 0 : partyOnMacro : partyOffMacro];
        
        NSLog(@"%@", remoteControl);
        NSLog(@"--- Pushing Macro On---");
        [remoteControl onButtonWasPushed : 0];
        NSLog(@"--- Pushing Macro Off---");
        [remoteControl offButtonWasPushed : 0];
    }
    return 0;
}

