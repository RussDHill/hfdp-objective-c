//
//  Hottub.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hottub : NSObject
{
    BOOL _on;
}
@property (setter = setTemperature:) int temperature;

- (void)hottubOn;
- (void)hottubOff;
- (void)bubblesOn;
- (void)bubblesOff;
- (void)jetsOn;
- (void)jetsOff;
- (void)heat;
- (void)cool;
@end
