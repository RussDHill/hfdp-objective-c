//
//  AlternatingDinerMenuEnumerator.h
//  DinerMergerCafe
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DinerMenu;

@interface AlternatingDinerMenuEnumerator : NSEnumerator
{
    int _position;
    DinerMenu* _dinerMenu;
}
- (id)nextObject;
- (id)initWithDinerMenu: (DinerMenu*)dinerMenu;
@end
