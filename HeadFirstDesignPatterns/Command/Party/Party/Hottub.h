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
    int _temperature;
}

- (void)on;
- (void)off;
- (void)circulate;
- (void)jetsOn;
- (void)jetsOff;
- (void)setTemperature: (int)temperature;
@end
