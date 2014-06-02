//
//  Waitress.h
//  Menu
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MenuComponent;

@interface Waitress : NSObject
{
    MenuComponent* _allMenus;
}
- (id)initWithMenuComponent: (MenuComponent*)allMenus;
- (void)printMenu;
@end
