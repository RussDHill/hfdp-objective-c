//
//  ClamPizza.h
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "AbstractPizza.h"

@interface ClamPizza : AbstractPizza
{
    id<PizzaIngredientFactory> _ingredientFactory;
}
- (void)prepare;
- (id)initWithFactory: (id<PizzaIngredientFactory>)factory;
@end
