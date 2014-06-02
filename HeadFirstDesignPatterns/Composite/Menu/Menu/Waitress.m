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

@end
