//
//  MenuItem.h
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (readonly) NSString* name;
@property (readonly) NSString* information;
@property (readonly) BOOL vegetarian;
@property (readonly) double price;

- (id)initWithAll: (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price;
- (NSString*)description;
@end
