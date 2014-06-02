//
//  CoffeeWithHook.h
//  Barista
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CaffeineBeverageWithHook.h"

@interface CoffeeWithHook : CaffeineBeverageWithHook
- (void) brew;
- (void) addCondiments;
- (bool) customerWantsCondiments;
- (NSString*) getUserInput;
@end
