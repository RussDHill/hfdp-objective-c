//
//  Menu.m
//  Menu
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Menu.h"

@implementation Menu

- (id)initWithNameAndInfo: (NSString*)information : (NSString*)name {
	if (!(self = [super init]))
		return nil;
	
    _menuComponents = [[NSMutableArray alloc] init];
    
    _name = name;
	_information = information;
	
	return self;
}

- (void)getMenuComponents: (NSMutableArray*)menuComponents {
    for (MenuComponent* menuComponent in _menuComponents) {
        [menuComponent getMenuComponents: menuComponents];
    }
}

- (void)add: (MenuComponent*) menuComponent {
    [_menuComponents addObject: menuComponent];
}

- (void)removeComp: (MenuComponent*) menuComponent {
	[_menuComponents removeObject: menuComponent];
}

- (MenuComponent*)getChild: (int)i {
	MenuComponent* menuComponent = [_menuComponents objectAtIndex: i];
    return menuComponent;
}

- (NSString*)getName {
    return _name;
}

- (NSString*)getInformation {
    return _information;
}

- (void)print {
    NSString* str = [NSString stringWithFormat: @"\r%@, %@\r--------------------\r", _name, _information];
    NSLog(@"%@", str);
    for (MenuComponent* menuComponent in _menuComponents) {
        [menuComponent print];
    }
}

@end
