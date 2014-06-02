//
//  PizzaStore.h
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Pizza;

@protocol PizzaStore <NSObject>
- (id<Pizza>)orderPizza: (NSString*) type;
- (id<Pizza>)createPizza: (NSString*) type;
@end