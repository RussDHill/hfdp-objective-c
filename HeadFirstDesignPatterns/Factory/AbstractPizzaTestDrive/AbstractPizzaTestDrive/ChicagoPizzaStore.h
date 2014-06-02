//
//  ChicagoPizzaStore.h
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "AbstractPizzaStore.h"

@interface ChicagoPizzaStore : AbstractPizzaStore
{
    id<PizzaIngredientFactory> _ingredientFactory;
}
- (id<Pizza>)createPizza: (NSString*)item;
@end
