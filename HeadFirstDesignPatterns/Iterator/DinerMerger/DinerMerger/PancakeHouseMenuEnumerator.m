//
//  PancakeHouseMenuEnumerator.m
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "PancakeHouseMenuEnumerator.h"
#import "MenuItem.h"

@implementation PancakeHouseMenuEnumerator

- (id)initWithMenuItems: (NSMutableArray*)items {
    if (!(self = [super init]))
		return nil;
		
	_position = 0;
    _items = items;
	
	return self;
}

- (id)nextObject {
    @try {
        id menuItem = [_items objectAtIndex: _position];
        _position = _position + 1;
        return menuItem;
    } @catch (NSException* e) {
        return nil;
    }
}
@end
