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
#import "MenuItem.h"

@implementation Waitress
- (id)initWithMenus: (PancakeHouseMenu*)pancakeHouseMenu : (DinerMenu*)dinerMenu {
    if (!(self = [super init]))
		return nil;
	
	_pancakeHouseMenu = pancakeHouseMenu;
    _dinerMenu = dinerMenu;
   	
	return self;
}

- (void)printMenu {
    NSEnumerator* pancakeEnumerator = [_pancakeHouseMenu objectEnumerator];
    NSEnumerator* dinerEnumerator = [_dinerMenu objectEnumerator];
    
    NSLog(@"MENU\r----\rBREAKFAST");
    [self printMenuUsingEnumerator: pancakeEnumerator];
    NSLog(@"\rLUNCH");
    [self printMenuUsingEnumerator: dinerEnumerator];
}

- (void) printMenuUsingEnumerator: (NSEnumerator*) enumerator {
    MenuItem* menuItem;
    while (menuItem = [enumerator nextObject]) {
        NSLog(@"%@", menuItem.name);
        NSLog(@"%.2f", menuItem.price);
        NSLog(@"%@", menuItem.information);
    }
}   

- (void) printVegetarianMenu {
    NSLog(@"\rVEGETARIAN MENU\r----\rBREAKFAST");
    [self printVegetarianMenuUsingEnumerator : [_pancakeHouseMenu objectEnumerator]];
    NSLog(@"\rVEGETARIAN MENU\r----\rLUNCH");
    [self printVegetarianMenuUsingEnumerator : [_dinerMenu objectEnumerator]];
}

- (bool) isItemVegetarian: (NSString*)name {
    NSEnumerator* breakfastEnumerator = [_pancakeHouseMenu objectEnumerator];
    if ([self isItemVegetarianUsingEnumerator: name : breakfastEnumerator]) {
        return true;
    }
    NSEnumerator* dinerEnumerator = [_dinerMenu objectEnumerator];
    if ([self isItemVegetarianUsingEnumerator: name : dinerEnumerator]) {
        return true;
    }
    return  false;
}

- (void) printVegetarianMenuUsingEnumerator : (NSEnumerator*) enumerator {
    MenuItem* menuItem;
    while (menuItem = [enumerator nextObject]) {
        if (menuItem.vegetarian) {
            NSLog(@"%@\t\t%.2f", menuItem.name, menuItem.price);
            NSLog(@"\t%@", menuItem.information);
        }
    }
}

- (bool) isItemVegetarianUsingEnumerator: (NSString*)name : (NSEnumerator*)enumerator {
    MenuItem* menuItem;
    while (menuItem = [enumerator nextObject]) {
        if ([menuItem.name isEqualToString: name]) {
            if (menuItem.vegetarian) {
                return true;
            }
        }
    }
    return false;
}

@end
