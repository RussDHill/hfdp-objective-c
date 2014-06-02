//
//  DinerMenuEnumerator.h
//  DinerMerger
//
//  Created by Russell Hill on 23/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DinerMenu;

@interface DinerMenuEnumerator : NSEnumerator
{
    int _position;
    DinerMenu* _dinerMenu;
}
- (id)nextObject;
- (id)initWithDinerMenu: (DinerMenu*)dinerMenu;
@end
