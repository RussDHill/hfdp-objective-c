//
//  Menu.h
//  Menu
//
//  Created by Russell Hill on 24/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "MenuComponent.h"

@interface Menu : MenuComponent
{
    NSString* _information;
	NSString* _name;
	NSMutableArray* _menuComponents;
}
- (id)initWithNameAndInfo: (NSString*)information : (NSString*)name;
- (void)getMenuComponents: (NSMutableArray*)menuComponents;
- (void)add: (MenuComponent*)menuComponent;
- (void)removeComp: (MenuComponent*)menuComponent;
- (MenuComponent*)getChild: (int) i;
- (NSString*)getName;
- (NSString*)getInformation;
- (void)print;
@end
