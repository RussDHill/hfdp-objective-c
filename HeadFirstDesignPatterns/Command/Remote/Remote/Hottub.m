//
//  Hottub.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Hottub.h"

@implementation Hottub

- (void)hottubOn {
    _on = YES;
}

- (void)hottubOff {
    _on = NO;
}

- (void)bubblesOn {
	if (_on) {
		NSLog(@"Hottub is bubbling!");
	}
}

- (void)bubblesOff {
	if (_on) {
		NSLog(@"Hottub is not bubbling!");
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

- (void)heat {
    _temperature = 105;
    NSLog(@"Hottub is heating to a steaming 105 degrees");
}

- (void)cool {
    _temperature = 98;
    NSLog(@"Hottub is cooling to 98 degrees");
}
@end
