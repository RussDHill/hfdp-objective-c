//
//  MenuItem.h
//  Menu
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "MenuComponent.h"

@interface MenuItem : MenuComponent
{
    NSString* _information;
	NSString* _name;
	BOOL _vegetarian;
    double _price;
}

- (id)initWithAll: (NSString*)name : (NSString*)information : (BOOL)vegetarian : (double)price;
- (void)getMenuComponents : (NSMutableArray*)menuComponents;
- (NSString*)getName;
- (NSString*)getInformation;
- (double)getPrice;
- (BOOL)isVegetarian;
- (void)print;
@end
