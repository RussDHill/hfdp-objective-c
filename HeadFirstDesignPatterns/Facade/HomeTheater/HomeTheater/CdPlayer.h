//
//  CdPlayer.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Amplifier;

@interface CdPlayer : NSObject
{
    NSString* _description;
    int _currentTrack;
    Amplifier* _amplifier;
    NSString* _title;
}
- (id) initWithDescAndAmp : (NSString*) description : (Amplifier*) amplifier;
- (void) on;
- (void) off;
- (void) eject;
- (void) playTitle : (NSString*) title;
- (void) playTrack : (int) track;
- (void) stop;
- (void) pause;
- (NSString*) description;
@end
