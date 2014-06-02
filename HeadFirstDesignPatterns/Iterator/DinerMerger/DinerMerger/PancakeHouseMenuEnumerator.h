//
//  PancakeHouseMenuEnumerator.h
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PancakeHouseMenuEnumerator : NSEnumerator
{
    int _position;
    NSMutableArray* _items;
}
- (id)nextObject;
- (id)initWithMenuItems: (NSMutableArray*)items;
@end
