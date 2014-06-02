//
//  Projector.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DvdPlayer;

@interface Projector : NSObject
{
    NSString* _description;
    DvdPlayer* _dvd;
}
- (id) initWithDescAndPlayer : (NSString*) description : (DvdPlayer*) dvd;
- (void) on;
- (void) off;
- (void) wideScreenMode;
- (void) tvMode;
- (NSString*) description;
@end
