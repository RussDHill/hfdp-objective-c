//
//  MenuComponent.m
//  Menu
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "MenuComponent.h"

@implementation MenuComponent

- (void)add: (MenuComponent*)menuComponent {
    [NSException raise: @"Unsupported Operation Exception" format: @"Unsupported Operation Exception"];
}

- (void)removeComp: (MenuComponent*)menuComponent {
	[NSException raise: @"Unsupported Operation Exception" format: @"Unsupported Operation Exception"];
}

- (MenuComponent*)getChild: (int)i {
	[NSException raise: @"Unsupported Operation Exception" format: @"Unsupported Operation Exception"];
    return nil;
}

- (NSString*)getName {
	[NSException raise: @"Unsupported Operation Exception" format: @"Unsupported Operation Exception"];
    return nil;
}

- (NSString*)getInformation {
	[NSException raise: @"Unsupported Operation Exception" format: @"Unsupported Operation Exception"];
    return nil;
}

- (double)getPrice {
	[NSException raise: @"Unsupported Operation Exception" format: @"Unsupported Operation Exception"];
    return 0;
}

- (bool)isVegetarian {
	[NSException raise: @"Unsupported Operation Exception" format: @"Unsupported Operation Exception"];
    return false;
}

- (void)print {
	[NSException raise: @"Unsupported Operation Exception" format: @"Unsupported Operation Exception"];
}

@end
