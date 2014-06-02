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
@class CafeMenu;
@protocol Iterator;

@interface Waitress : NSObject
{
    PancakeHouseMenu* _pancakeHouseMenu;
    DinerMenu* _dinerMenu;
    CafeMenu* _cafeMenu;
}
- (id)initWithMenus : (PancakeHouseMenu*) pancakeHouseMenu : (DinerMenu*)dinerMenu : (CafeMenu*)cafeMenu;
- (void)printMenu;
- (void)printMenuUsingEnumerator: (NSEnumerator*)enumerator;
- (void)printVegetarianMenu;
- (BOOL)isItemVegetarian: (NSString*)name;
- (void)printVegetarianMenuUsingEnumerator: (NSEnumerator*)enumerator;
- (BOOL)isItemVegetarianUsingEnumerator: (NSString*)name : (NSEnumerator*)enumerator;
@end
