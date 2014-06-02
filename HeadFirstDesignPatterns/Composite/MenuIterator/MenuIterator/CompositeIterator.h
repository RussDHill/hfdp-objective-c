//
//  CompositeIterator.h
//  MenuIterator
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MenuComponent;

@interface CompositeIterator : NSObject
{
    MenuComponent* _allMenus;
}
- (id) initWithAllMenus : (MenuComponent*) _allMenus;
- (void) getMenuComponents : (NSMutableArray*) menuComponents;
@end
