//
//  GumballMonitor.m
//  GumballMonitor
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GumballMonitor.h"
//#import "../../GumballMachine/GumballMachine/GumballMachineRemote.h"
#import "GumballMachineRemote.h"

@implementation GumballMonitor

- (id)initWithName: (NSString*)name {
    if (!(self = [super init]))
		return nil;
	
    _name = name;
	
	return self;
}

- (void)report {
    NSString* host = @"*";
    NSPort* port = [[NSSocketPortNameServer sharedInstance] portForName: _name host: host];
    if (port == nil)
        [self badConnection : [NSString stringWithFormat: @"no service on host '%@'", host]];
    
    NSConnection* connection = [NSConnection connectionWithReceivePort: nil sendPort: port];
    if (connection == nil)
		[self badConnection: @"Failed to create connection"];
    
    id gumballMachineProxy = [connection rootProxy];
    [gumballMachineProxy setProtocolForProxy: @protocol(GumballMachineRemote)];
    
    NSLog(@"Gumball Machine: %@", [gumballMachineProxy getLocation]);
    NSLog(@"Current inventory: %i", [gumballMachineProxy getCount]);
    NSLog(@"Current state: %@", [gumballMachineProxy getStateAsString]);
}

- (void) badConnection: (NSString*)problem {
    NSLog(@"Guest unable to connect to service '%@': %@", _name, problem);
	exit(2);
}

@end
