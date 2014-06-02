//
//  Protocols.h
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Veggies <NSObject>
- (NSString*)toString;
@end

@protocol Pepperoni <NSObject>
- (NSString*)toString;
@end

@protocol Sauce <NSObject>
- (NSString*)toString;
@end

@protocol Cheese <NSObject>
- (NSString*)toString;
@end

@protocol Clams <NSObject>
- (NSString*)toString;
@end

@protocol Dough <NSObject>
- (NSString*)toString;
@end

@protocol PizzaIngredientFactory <NSObject>
- (id<Dough>)createDough;
- (id<Sauce>)createSauce;
- (id<Cheese>)createCheese;
- (id<Pepperoni>)createPepperoni;
- (id<Clams>)createClams;
- (void)createVeggies: (NSMutableArray*)veggies;
@end

@protocol Pizza <NSObject>
- (NSString*)getName;
- (void)setName:(NSString*)name;
- (void)box;
- (void)cut;
- (void)bake;
- (void)prepare;
- (NSString*)toString;
@end

@protocol PizzaStore <NSObject>
- (id<Pizza>)orderPizza: (NSString*)type;
- (id<Pizza>)createPizza: (NSString*)type;
@end