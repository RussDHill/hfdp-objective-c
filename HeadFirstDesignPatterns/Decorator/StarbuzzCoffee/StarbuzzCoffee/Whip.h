//
//  Whip.h
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "AbstractBeverage.h"

@interface Whip : AbstractBeverage
{
	id<Beverage> _beverage;
}
- (double)cost;
- (NSString*)getDescription;
- (id)initDecorator: (id<Beverage>)beverage;
@end
