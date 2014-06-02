//
//  main.m
//  MenuIterator
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuComponent.h"
#import "MenuItem.h"
#import "Menu.h"
#import "Waitress.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MenuComponent* pancakeHouseMenu = [[Menu alloc] initWithNameAndInfo: @"PANCAKE HOUSE MENU" : @"Breakfast"];
        MenuComponent* dinerMenu = [[Menu alloc] initWithNameAndInfo: @"DINER MENU" : @"Lunch"];
        MenuComponent* cafeMenu = [[Menu alloc] initWithNameAndInfo: @"CAFE MENU" : @"Dinner"];
        MenuComponent* dessertMenu = [[Menu alloc] initWithNameAndInfo: @"DESSERT MENU" : @"Dessert of course!"];
        MenuComponent* coffeeMenu = [[Menu alloc] initWithNameAndInfo: @"COFFEE MENU" : @"Stuff to go with your afternoon coffee"];
        
        MenuComponent* allMenus = [[Menu alloc] initWithNameAndInfo: @"ALL MENU" : @"All menus combined"];
        
        [allMenus add: pancakeHouseMenu];
        [allMenus add: dinerMenu];
        [allMenus add: cafeMenu];
        
        
        [pancakeHouseMenu add: [[MenuItem alloc] initWithAll:
                                 @"K&B's Pancake Breakfast" :
                                 @"Pancakes with scrambled eggs, and toast" :
                                                         YES :
                                 2.99]];
        [pancakeHouseMenu add: [[MenuItem alloc] initWithAll:
                                 @"Regular Pancake Breakfast" :
                                 @"Pancakes with fried eggs, sausage" :
                                                        NO :
                                 2.99]];
        [pancakeHouseMenu add: [[MenuItem alloc] initWithAll:
                                 @"Blueberry Pancakes" :
                                 @"Pancakes made with fresh blueberries, and blueberry syrup" :
                                                         YES :
                                 3.49]];
        [pancakeHouseMenu add: [[MenuItem alloc] initWithAll:
                                 @"Waffles" :
                                 @"Waffles, with your choice of blueberries or strawberries" :
                                                         YES :
                                 3.59]];
        
        [dinerMenu add: [[MenuItem alloc] initWithAll:
                          @"Vegetarian BLT" :
                          @"(Fakin') Bacon with lettuce & tomato on whole wheat" :
                                                  YES :
                          2.99]];
        [dinerMenu add: [[MenuItem alloc] initWithAll:
                          @"BLT" :
                          @"Bacon with lettuce & tomato on whole wheat" :
                                                 NO :
                          2.99]];
        [dinerMenu add: [[MenuItem alloc] initWithAll:
                          @"Soup of the day" :
                          @"A bowl of the soup of the day, with a side of potato salad" :
                                                 NO :
                          3.29]];
        [dinerMenu add: [[MenuItem alloc] initWithAll:
                          @"Hotdog" :
                          @"A hot dog, with saurkraut, relish, onions, topped with cheese" :
                                                 NO :
                          3.05]];
        [dinerMenu add: [[MenuItem alloc] initWithAll:
                          @"Steamed Veggies and Brown Rice" :
                          @"Steamed vegetables over brown rice" :
                                                  YES :
                          3.99]];
        [dinerMenu add: [[MenuItem alloc] initWithAll:
                          @"Pasta" :
                          @"Spaghetti with Marinara Sauce, and a slice of sourdough bread" :
                                                  YES :
                          3.89]];
        
        [dinerMenu add: dessertMenu];
        
        
        [dessertMenu add: [[MenuItem alloc] initWithAll:
                            @"Apple Pie" :
                            @"Apple pie with a flakey crust, topped with vanilla icecream" :
                                                    YES :
                            1.59]];
        
        [dessertMenu add: [[MenuItem alloc] initWithAll:
                            @"Cheesecake" :
                            @"Creamy New York cheesecake, with a chocolate graham crust" :
                                                    YES :
                            1.99]];
        [dessertMenu add: [[MenuItem alloc] initWithAll:
                            @"Sorbet" :
                            @"A scoop of raspberry and a scoop of lime" :
                                                    YES :
                            1.89]];
        
        [cafeMenu add: [[MenuItem alloc] initWithAll:
                         @"Veggie Burger and Air Fries" :
                         @"Veggie burger on a whole wheat bun, lettuce, tomato, and fries" :
                                                 YES :
                         3.99]];
        [cafeMenu add: [[MenuItem alloc] initWithAll:
                         @"Soup of the day" :
                         @"A cup of the soup of the day, with a side salad" :
                                                NO :
                         3.69]];
        [cafeMenu add: [[MenuItem alloc] initWithAll:
                         @"Burrito" :
                         @"A large burrito, with whole pinto beans, salsa, guacamole" :
                                                 YES :
                         4.29]];
        
        [cafeMenu add: coffeeMenu];
        
        [coffeeMenu add: [[MenuItem alloc] initWithAll:
                           @"Coffee Cake" :
                           @"Crumbly cake topped with cinnamon and walnuts" :
                                                   YES :
                           1.59]];
        [coffeeMenu add: [[MenuItem alloc] initWithAll:
                           @"Bagel" :
                           @"Flavors include sesame, poppyseed, cinnamon raisin, pumpkin" :
                                                  NO :
                           0.69]];
        [coffeeMenu add: [[MenuItem alloc] initWithAll:
                           @"Biscotti" :
                           @"Three almond or hazelnut biscotti cookies" :
                                                   YES :
                           0.89]];
        
        Waitress* waitress = [[Waitress alloc] initWithMenuComponent: allMenus];
        
        [waitress printMenu];
        [waitress printVegetarianMenu];
        
    }

    return 0;
}

