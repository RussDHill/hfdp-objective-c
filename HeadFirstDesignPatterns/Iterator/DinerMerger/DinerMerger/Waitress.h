//
//  Waitress.h
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PancakeHouseMenu;
@class DinerMenu;
@protocol Iterator;

@interface Waitress : NSObject
{
    PancakeHouseMenu* _pancakeHouseMenu;
    DinerMenu* _dinerMenu;
}
- (id)initWithMenus: (PancakeHouseMenu*)pancakeHouseMenu : (DinerMenu*)dinerMenu;
- (void)printMenu;
- (void)printMenuUsingEnumerator : (NSEnumerator*) iterator;
- (void)printVegetarianMenu;
- (bool)isItemVegetarian: (NSString*) name;
- (void)printVegetarianMenuUsingEnumerator: (NSEnumerator*)iterator;
- (bool)isItemVegetarianUsingEnumerator: (NSString*)name : (NSEnumerator*)iterator;
@end
