//
//  ChicagoPizzaStore.h
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "AbstractPizzaStore.h"

@interface ChicagoPizzaStore : AbstractPizzaStore
- (id<Pizza>)createPizza: (NSString*)type;
@end
