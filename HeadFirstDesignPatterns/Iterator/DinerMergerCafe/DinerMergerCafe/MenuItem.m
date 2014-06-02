//
//  MenuItem.m
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
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

- (NSString*)description {
    return [NSString stringWithFormat: @"%@ , $ %f/r/t%@", _name, _price, _information];
}

@end
