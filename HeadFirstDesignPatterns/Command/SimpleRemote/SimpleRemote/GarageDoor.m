//
//  GarageDoor.m
//  SimpleRemote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GarageDoor.h"

@implementation GarageDoor

- (void)up {
	NSLog(@"Garage door is open\n");
}

- (void)down {
	NSLog(@"Garage door is closed\n");
}

- (void)stop {
	NSLog(@"Garage door is stopped\n");
}

- (void)lightOn {
	NSLog(@"Garage light is on\n");
}

- (void)lightOff {
	NSLog(@"Garage light is off\n");
}
@end
