//
//  DinerMenu.h
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Menu.h"

#define MAX_ITEMS 6

@class MenuItem;

@interface DinerMenu : NSObject<Menu>
{
    MenuItem* _menuItems[MAX_ITEMS];
    int _numberOfItems;

}
- (NSEnumerator*)objectEnumerator;
- (void)addItem: (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price;
- (MenuItem*)getMenuItem: (int)index;
@end
