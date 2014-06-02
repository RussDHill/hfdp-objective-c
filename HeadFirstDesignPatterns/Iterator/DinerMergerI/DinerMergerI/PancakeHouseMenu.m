//
//  PancakeHouseMenu.m
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "PancakeHouseMenu.h"
#import "MenuItem.h"

@implementation PancakeHouseMenu

- (id)init {
    if (!(self = [super init]))
		return nil;
	
	_menuItems = [NSMutableArray new];
    
    [self addItem: @"K&B's Pancake Breakfast" :
            @"Pancakes with scrambled eggs, and toast" : YES : 2.99];
	[self addItem: @"Regular Pancake Breakfast" :
            @"Pancakes with fried eggs, sausage" : NO : 2.99];
	[self addItem: @"Blueberry Pancakes" :
            @"Pancakes made with fresh blueberries" : YES : 3.49];
	[self addItem: @"Waffles" :
     @"Waffles, with your choice of blueberries or strawberries" :
            YES : 3.59];

 	return self;
}

- (void)addItem: (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price {
    
    MenuItem* menuItem = [[MenuItem alloc] initWithAll: name : information : vegetarian : price];
    [_menuItems addObject: menuItem];
}

- (NSEnumerator*)objectEnumerator {
    return [_menuItems objectEnumerator];
}

@end
