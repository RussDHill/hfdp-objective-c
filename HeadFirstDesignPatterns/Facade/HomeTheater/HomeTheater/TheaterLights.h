//
//  TheaterLights.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TheaterLights : NSObject
{
    NSString* _description;
}
- (id) initWithDescription : (NSString*) description;
- (void) on;
- (void) off;
- (void) dim : (int) level;
- (NSString*) description;
@end
