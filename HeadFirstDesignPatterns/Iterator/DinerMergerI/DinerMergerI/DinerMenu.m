//
//  DinerMenu.m
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "DinerMenu.h"
#import "MenuItem.h"
#import "DinerMenuEnumerator.h"

@implementation DinerMenu

- (id)init {
    if (!(self = [super init]))
		return nil;
	
	_numberOfItems = 0;
        
    [self addItem: @"Vegetarian BLT" :
     @"(Fakin') Bacon with lettuce & tomato on whole wheat" : YES : 2.99];
	[self addItem: @"BLT" :
            @"Bacon with lettuce & tomato on whole wheat" : NO : 2.99];
	[self addItem: @"Soup of the day" :
            @"Soup of the day, with a side of potato salad" : NO : 3.29];
	[self addItem: @"Hotdog" :
            @"A hot dog, with saurkraut, relish, onions, topped with cheese" :
            NO : 3.05];
	[self addItem : @"Steamed Veggies and Brown Rice" :
            @"Steamed vegetables over brown rice" : YES : 3.99];
	[self addItem : @"Pasta" :
            @"Spaghetti with Marinara Sauce, and a slice of sourdough bread" :
            YES : 3.89];
	
	return self;
}

- (void)addItem: (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price {
    
    MenuItem* menuItem = [[MenuItem alloc] initWithAll: name : information : vegetarian : price];
    if (_numberOfItems >= MAX_ITEMS) {
        NSLog(@"Sorry, menu is full! Can't add item to menu");
    } else {
        _menuItems[_numberOfItems] = menuItem;
        _numberOfItems = _numberOfItems + 1;
    }
}

- (NSEnumerator*)objectEnumerator {
    return [[DinerMenuEnumerator alloc] initWithDinerMenu : self];
}

- (MenuItem*)getMenuItem: (int)index {
        return _menuItems[index];
}

@end
