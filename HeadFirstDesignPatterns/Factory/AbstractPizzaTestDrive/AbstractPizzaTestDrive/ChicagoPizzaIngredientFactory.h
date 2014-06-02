//
//  ChicagoPizzaIngredientFactory.h
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocols.h"

@interface ChicagoPizzaIngredientFactory : NSObject<PizzaIngredientFactory>
- (id<Dough>)createDough;
- (id<Sauce>)createSauce;
- (id<Cheese>)createCheese;
- (id<Pepperoni>)createPepperoni;
- (id<Clams>)createClams;
- (void)createVeggies: (NSMutableArray*)veggies;
@end


