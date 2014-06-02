//
//  Screen.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Screen : NSObject
{
    NSString* _description;
}
- (id) initWithDescription : (NSString*) description;
- (void) up;
- (void) down;
- (NSString*) description;
@end
