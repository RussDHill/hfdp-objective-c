//
//  AbstractBeverage.h
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "Beverage.h"

@interface AbstractBeverage : NSObject<Beverage>
{
	NSString* _description;
}
- (double)cost;
- (NSString*)getDescription;
@end
