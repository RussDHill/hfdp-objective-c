//
//  PopcornPopper.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PopcornPopper : NSObject
{
    NSString* _description;
}
- (id) initWithDescription : (NSString*) description;
- (void) on;
- (void) off;
- (void) pop;
- (NSString*) description;

@end
