//
//  MenuComponent.h
//  Menu
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuComponent : NSObject
- (void)add: (MenuComponent*)menuComponent;
- (void)removeComp: (MenuComponent*)menuComponent;
- (MenuComponent*)getChild: (int)i;
- (NSString*)getName;
- (NSString*)getInformation;
- (double)getPrice;
- (bool)isVegetarian;
- (void)print;
@end
