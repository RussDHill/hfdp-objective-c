//
//  AbstractPizza.h
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "Pizza.h"

@interface AbstractPizza : NSObject<Pizza>
{
    NSString* _name;
	NSString* _dough;
	NSString* _sauce;
    NSMutableArray* _toppings;
}
- (NSString*)getName;
- (void)box;
- (void)cut;
- (void)bake;
- (void)prepare;
@end
