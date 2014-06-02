//
//  Pizza.h
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Pizza <NSObject>
- (NSString*)getName;
- (void)box;
- (void)cut;
- (void)bake;
- (void)prepare;
@end
