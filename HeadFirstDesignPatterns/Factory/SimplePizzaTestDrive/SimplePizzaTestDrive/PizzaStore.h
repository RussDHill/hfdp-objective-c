//
//  PizzaStore.h
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Pizza;
@class SimplePizzaFactory;

@interface PizzaStore : NSObject
{
    SimplePizzaFactory* _factory;
}
- (id<Pizza>)orderPizza: (NSString*)type;
- (id)initWithFactory: (SimplePizzaFactory*)factory;
@end
