//
//  ChocolateBoiler.h
//  Chocolate
//
//  Created by Russell Hill on 19/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChocolateBoiler : NSObject 

@property (nonatomic, readonly, getter = isBoiled) BOOL boiled;
@property (nonatomic, readonly, getter = isEmpty) BOOL empty;

- (void)boil;
- (void)drain;
- (void)fill;
+ (id)getInstance;
@end
