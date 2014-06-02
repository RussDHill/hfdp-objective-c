//
//  PancakeHouseMenu.h
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Menu.h"

@interface PancakeHouseMenu : NSObject<Menu>
{
    NSMutableArray* _menuItems;
}
- (NSEnumerator*)objectEnumerator;
- (void)addItem: (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price;
@end
