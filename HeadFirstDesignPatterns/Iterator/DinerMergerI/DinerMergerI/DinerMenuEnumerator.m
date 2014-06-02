//
//  DinerMenuEnumerator.m
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "DinerMenuEnumerator.h"
#import "DinerMenu.h"

@implementation DinerMenuEnumerator

- (id)initWithDinerMenu: (DinerMenu*)dinerMenu {
    if (!(self = [super init]))
		return nil;
	
    _position = 0;
    _dinerMenu = dinerMenu;
	
	return self;
}

- (id)nextObject {
    if (_position < MAX_ITEMS) {
        id menuItem = [_dinerMenu getMenuItem: _position];
        _position = _position + 1;
        return menuItem;
    } else {
        return nil;
    }
}

@end
