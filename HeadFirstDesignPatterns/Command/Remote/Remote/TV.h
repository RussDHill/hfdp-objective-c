//
//  TV.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TV : NSObject
{
    NSString* _location;
    int _channel;
}
- (id)initWithLocation: (NSString*)location;
- (void)off;
- (void)on;
- (void)setInputChannel;
@end
