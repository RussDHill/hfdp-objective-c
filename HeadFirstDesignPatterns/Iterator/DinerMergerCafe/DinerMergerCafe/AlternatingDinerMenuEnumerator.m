//
//  AlternatingDinerMenuEnumerator.m
//  DinerMergerCafe
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "AlternatingDinerMenuEnumerator.h"
#import "DinerMenu.h"

@implementation AlternatingDinerMenuEnumerator

- (id)initWithDinerMenu: (DinerMenu*)dinerMenu {
    if (!(self = [super init]))
		return nil;
	
    NSCalendar* gregorian = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
    NSDateComponents* comps = [gregorian components: NSWeekdayCalendarUnit fromDate: [NSDate date]];
    long weekday = [comps weekday];
    
    _position = weekday % 2;
    _dinerMenu = dinerMenu;
	
	return self;
}

- (id)nextObject {
    if (_position < MAX_ITEMS) {
        id menuItem = [_dinerMenu getMenuItem: _position];
        _position = _position + 2;
        return menuItem;
    } else {
        return nil;
    }
}

@end
