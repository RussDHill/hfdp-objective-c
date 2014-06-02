//
//  Light.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Light : NSObject
{
    NSString* _location;
}
@property (readonly, getter = getLevel) int level;

- (id)initWithLocation : (NSString*) location;
- (void)off;
- (void)on;
- (void)dim: (int)level;
@end
