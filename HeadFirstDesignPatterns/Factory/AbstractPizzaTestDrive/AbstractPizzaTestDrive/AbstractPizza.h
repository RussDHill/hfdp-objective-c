//
//  AbstractPizza.h
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "Protocols.h"

@interface AbstractPizza : NSObject<Pizza>
{
	NSString* _name;
    id<Dough> _dough;
	id<Sauce> _sauce;
    NSMutableArray* _veggies;
    id<Cheese> _cheese;
	id<Pepperoni> _pepperoni;
	id<Clams> _clam;
}
- (NSString*)getName;
- (void)setName : (NSString*)name;
- (void)box;
- (void)cut;
- (void)bake;
- (void)prepare; //=0;
- (NSString*)toString;
@end
