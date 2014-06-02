//
//  main.m
//  DinerMergerI
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PancakeHouseMenu.h"
#import "DinerMenu.h"
#import "Waitress.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        PancakeHouseMenu* pancakeHouseMenu = [[PancakeHouseMenu alloc] init];
        DinerMenu* dinerMenu = [[DinerMenu alloc] init];
        
        Waitress* waitress = [[Waitress alloc] initWithMenus : pancakeHouseMenu : dinerMenu];
        [waitress printMenu];
        [waitress printVegetarianMenu];
        
    }
    return 0;
}

