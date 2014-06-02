//
//  Waitress.m
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Waitress.h"
#import "PancakeHouseMenu.h"
#import "DinerMenu.h"
#import "CafeMenu.h"
#import "MenuItem.h"

@implementation Waitress

- (id)initWithMenus: (PancakeHouseMenu*)pancakeHouseMenu : (DinerMenu*)dinerMenu : (CafeMenu*)cafeMenu {
    if (!(self = [super init]))
		return nil;
	
	_pancakeHouseMenu = pancakeHouseMenu;
    _dinerMenu = dinerMenu;
    _cafeMenu = cafeMenu;
   	
	return self;
}

- (void)printMenu {
    NSEnumerator* pancakeEnumerator = [_pancakeHouseMenu objectEnumerator];
    NSEnumerator* dinerEnumerator = [_dinerMenu objectEnumerator];
    NSEnumerator* cafeEnumerator = [_cafeMenu objectEnumerator];
    
    NSLog(@"MENU\r----\rBREAKFAST");
    [self printMenuUsingEnumerator: pancakeEnumerator];
    NSLog(@"\rLUNCH");
    [self printMenuUsingEnumerator: dinerEnumerator];
    NSLog(@"\rDINNER");
    [self printMenuUsingEnumerator: cafeEnumerator];
}

- (void)printMenuUsingEnumerator: (NSEnumerator*)enumerator {
    MenuItem* menuItem;
    while (menuItem = [enumerator nextObject]) {
        NSLog(@"%@", menuItem.name);
        NSLog(@"%.2f", menuItem.price);
        NSLog(@"%@", menuItem.information);
    }
}   

- (void) printVegetarianMenu {
    NSLog(@"\rVEGETARIAN MENU\r----------------");
    [self printVegetarianMenuUsingEnumerator: [_pancakeHouseMenu objectEnumerator]];
    [self printVegetarianMenuUsingEnumerator: [_dinerMenu objectEnumerator]];
    [self printVegetarianMenuUsingEnumerator: [_cafeMenu objectEnumerator]];
}

- (BOOL) isItemVegetarian: (NSString*)name {
    NSEnumerator* breakfastEnumerator = [_pancakeHouseMenu objectEnumerator];
    if ([self isItemVegetarianUsingEnumerator: name : breakfastEnumerator]) {
        return YES;
    }
    NSEnumerator* dinerEnumerator = [_dinerMenu objectEnumerator];
    if ([self isItemVegetarianUsingEnumerator: name : dinerEnumerator]) {
        return YES;
    }
    NSEnumerator* cafeEnumerator = [_cafeMenu objectEnumerator];
    if ([self isItemVegetarianUsingEnumerator: name : cafeEnumerator]) {
        return YES;
    }
    return  NO;
}

- (void)printVegetarianMenuUsingEnumerator: (NSEnumerator*)enumerator {
    MenuItem* menuItem;
    while (menuItem = [enumerator nextObject]) {
        NSLog(@"%@\t\t%.2f", menuItem.name, menuItem.price);
        NSLog(@"\t%@", menuItem.information);
    }
}

- (BOOL)isItemVegetarianUsingEnumerator: (NSString*)name : (NSEnumerator*)enumerator {
    MenuItem* menuItem;
    while (menuItem = [enumerator nextObject]) {
        if ([menuItem.name isEqualToString: name]) {
            if (menuItem.vegetarian) {
                return YES;
            }
        }
    }
    return NO;
}

@end
