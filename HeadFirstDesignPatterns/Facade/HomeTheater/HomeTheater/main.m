//
//  main.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeTheaterFacade.h"
#import "Amplifier.h"
#import "Tuner.h"
#import "DvdPlayer.h"
#import "CdPlayer.h"
#import "Projector.h"
#import "TheaterLights.h"
#import "Screen.h"
#import "PopcornPopper.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Amplifier* amp = [[Amplifier alloc] initWithDescription : @"Top-O-Line Amplifier"];
        Tuner* tuner = [[Tuner alloc] initWithDescAndAmp : @"Top-O-Line AM/FM Tuner" : amp];
        DvdPlayer* dvd = [[DvdPlayer alloc] initWithDescAndAmp : @"Top-O-Line DVD Player" : amp];
        CdPlayer* cd = [[CdPlayer alloc] initWithDescAndAmp : @"Top-O-Line CD Player" : amp];
        Projector* projector = [[Projector alloc] initWithDescAndPlayer : @"Top-O-Line Projector" : dvd];
        TheaterLights* lights = [[TheaterLights alloc] initWithDescription : @"Theater Ceiling Lights"];
        Screen* screen = [[Screen alloc] initWithDescription : @"Theater Screen"];
        PopcornPopper* popper = [[PopcornPopper alloc] initWithDescription : @"Popcorn Popper"];
        
        HomeTheaterFacade* homeTheater =
            [[HomeTheaterFacade alloc] initWithAll :amp : tuner : dvd : cd : projector : lights : screen : popper];
        
        [homeTheater watchMovie:@"The Shawshank Redemption"];
        [homeTheater endMovie];
        
    }
    return 0;
}

