//
//  Waitress.m
//  Menu
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Waitress.h"
#import "MenuComponent.h"

@implementation Waitress

- (id)initWithMenuComponent: (MenuComponent*)allMenus {
    if (!(self = [super init]))
		return nil;
	
    _allMenus = allMenus;
	
	return self;
}

- (void)printMenu {
    [_allMenus print];
}

- (void)printVegetarianMenu {
	NSMutableArray* menuComponents = [NSMutableArray new];
    
	[_allMenus getMenuComponents: menuComponents];
    
	NSLog(@"\rVEGETARIAN MENU\r----\r");
    
	for (MenuComponent* menuComponent in menuComponents) {
		if ([menuComponent isVegetarian]) {
			[menuComponent print];
		}
	}
}

@end
