//
//  MenuItem.m
//  Menu
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem

- (id)initWithAll: (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price {
    if (!(self = [super init]))
		return nil;
	
    _name = name;
    _information = information;
    _vegetarian = vegetarian;
    _price = price;
	
	return self;
}

- (NSString*)getName {
    return _name;
}

- (NSString*)getInformation {
    return _information;
}

- (double)getPrice {
	return _price;
}

- (bool)isVegetarian {
    return _vegetarian;
}

- (void)print {
    NSString* veg = @"";
    if (_vegetarian) {
		veg = @"(v)";
	}

    NSLog(@" %@%@, %.2f \r     --%@", _name, veg, _price, _information);
}

@end
