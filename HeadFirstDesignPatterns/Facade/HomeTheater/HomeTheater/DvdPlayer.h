//
//  DvdPlayer.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Amplifier;

@interface DvdPlayer : NSObject
{
    NSString* _description;
    int _currentTrack;
    Amplifier* _amplifier;
    NSString* _movie;
}
- (id) initWithDescAndAmp : (NSString*) description : (Amplifier*) amplifier;
- (void) on;
- (void) off;
- (void) eject;
- (void) playTitle : (NSString*) title;
- (void) playTrack : (int) track;
- (void) stop;
- (void) pause;
- (void) setTwoChannelAudio;
- (void) setSurroundAudio;
- (NSString*) description;
@end
