//
//  Hottub.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Hottub.h"

@implementation Hottub

- (void)on {
    _on = YES;
}

- (void)off {
    _on = NO;
}

- (void)circulate {
	if (_on) {
		NSLog(@"Hottub is bubbling!");
	}
}

- (void)jetsOn {
	if (_on) {
		NSLog(@"Hottub jets are on");
	}
}

- (void)jetsOff {
	if (_on) {
		NSLog(@"Hottub jets are off");
	}
}

- (void)setTemperature: (int)temperature {
    if (temperature > _temperature) {
        NSLog(@"Hottub is heating to a steaming %i degrees", temperature);
    } else {
        NSLog(@"Hottub is cooling to %i degrees", temperature);
    }
    _temperature = temperature;
}
@end
