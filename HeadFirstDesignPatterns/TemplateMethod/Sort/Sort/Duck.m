//
//  Duck.m
//  Sort
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Duck.h"

@implementation Duck
- initWithNameAndWeight : (NSString*) name : (int) weight
{
    if (!(self = [super init]))
		return nil;
	
	_name = name;
    _weight = weight;
	
	return self;
}

- (NSComparisonResult) compare : (Duck*) obj {
    if (self.weight > obj.weight)
        return (NSComparisonResult)NSOrderedDescending;
    else if (self.weight < obj.weight)
        return (NSComparisonResult)NSOrderedAscending;
    else
        return (NSComparisonResult)NSOrderedSame;
}

- (NSString*) description {
    return [NSString stringWithFormat : @"%@ weighs %i", _name, _weight];
}

@end

