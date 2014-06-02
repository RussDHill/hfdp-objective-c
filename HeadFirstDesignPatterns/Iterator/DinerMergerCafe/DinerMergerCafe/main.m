//
//  main.m
//  DinerMergerCafe
//
//  Created by Russell Hill on 26/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PancakeHouseMenu.h"
#import "DinerMenu.h"
#import "CafeMenu.h"
#import "Waitress.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        PancakeHouseMenu* pancakeHouseMenu = [PancakeHouseMenu new];
        DinerMenu* dinerMenu = [DinerMenu new];
        CafeMenu* cafeMenu = [CafeMenu new];
        
        Waitress* waitress = [[Waitress alloc] initWithMenus: pancakeHouseMenu : dinerMenu : cafeMenu];
        [waitress printMenu];
        [waitress printVegetarianMenu];
        
        NSLog(@"\nCustomer asks, is the Hotdog vegetarian?\n");
        NSLog(@"Waitress says: ");
        if ([waitress isItemVegetarian: @"Hotdog"]) {
            NSLog(@"Yes\n");
        } else {
            NSLog(@"No\n");
        }
        NSLog(@"\nCustomer asks, are the Waffles vegetarian?\n");
        NSLog(@"Waitress says: ");
        if ([waitress isItemVegetarian: @"Waffles"]) {
            NSLog(@"Yes\n");
        } else {
            NSLog(@"No\n");
        }
               
    }
    return 0;
}

