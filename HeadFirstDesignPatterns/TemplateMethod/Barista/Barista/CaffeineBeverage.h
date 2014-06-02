//
//  CaffeineBeverage.h
//  Barista
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaffeineBeverage : NSObject
- (void) prepareRecipe;
- (void) boilWater;
- (void) pourInCup;
- (void) brew; // = 0;
- (void) addCondiments; // = 0;
@end
