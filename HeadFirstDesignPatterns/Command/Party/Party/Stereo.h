//
//  Stereo.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stereo : NSObject
{
    NSString* _location;
}
- (id)initWithLocation: (NSString*)location;
- (void)off;
- (void)on;
- (void)setCD;
- (void)setDVD;
- (void)setRadio;
- (void)setVolume: (int)volume;
@end
