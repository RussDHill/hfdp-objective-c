//
//  CafeMenu.h
//  DinerMergerCafe
//
//  Created by Russell Hill on 26/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Menu.h"

@interface CafeMenu : NSObject<Menu>
{
    NSHashTable* _menuItems;
    int _numberOfItems;
    
}
- (NSEnumerator*)objectEnumerator;
- (void)addItem: (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price;
@end
