//
//  AbstractPizzaStore.h
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocols.h"

@interface AbstractPizzaStore : NSObject<PizzaStore>
- (id<Pizza>)orderPizza: (NSString*) type;
- (id<Pizza>)createPizza: (NSString*) item;
@end
