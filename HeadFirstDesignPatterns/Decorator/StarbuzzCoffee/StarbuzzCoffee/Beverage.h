//
//  Beverage.h
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
//@class NSString;

@protocol Beverage <NSObject>
- (double)cost;
- (NSString*)getDescription;
@end
