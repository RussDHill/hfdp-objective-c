//
//  CafeMenu.m
//  DinerMergerCafe
//
//  Created by Russell Hill on 26/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CafeMenu.h"
#import "MenuItem.h"

@implementation CafeMenu

- (id)init {
    if (!(self = [super init]))
		return nil;
	
	_menuItems = [[NSHashTable alloc] init];
    
    [self addItem: @"Veggie Burger and Air Fries" :
        @"Veggie burger on a whole wheat bun, lettuce, tomato, and fries" : YES : 3.99];
	[self addItem: @"Soup of the day" :
        @"A cup of the soup of the day, with a side salad" : NO : 3.69];
	[self addItem: @"Burrito" :
        @"A large burrito, with whole pinto beans, salsa, guacamole" : YES : 4.29];
   
 	return self;
}

- (void)addItem : (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price {
    
    MenuItem* menuItem = [[MenuItem alloc] initWithAll: name : information : vegetarian : price];
    [_menuItems addObject: menuItem];
}

- (NSEnumerator*)objectEnumerator {
    return [_menuItems objectEnumerator];
}
@end
