//
//  main.m
//  GumballMachine
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GumballMachineRemote.h"
#import "GumballMachine.h"

static void badGumballMachine(NSString* name)
{
	NSLog(@"Gumball Machine failed: unable to create a service named '%@'", name);
	exit(2);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int count = 0;
        
        if (argc < 3) {
            NSLog(@"GumballMachine <name> <inventory>");
            return 1;
        }
        
        NSString* name = [NSString stringWithUTF8String: argv[1]];
        NSString* countAsString = [NSString stringWithUTF8String: argv[2]];
        count = (int)[countAsString integerValue];
        
        NSSocketPort* port = [NSSocketPort new];
        NSConnection* connection = [NSConnection connectionWithReceivePort: port sendPort: nil];
        if (![[NSSocketPortNameServer sharedInstance] registerPort: port name: name]) {
			badGumballMachine(name);
		}
        
        GumballMachine* gumballMachine = [[GumballMachine alloc] initWithLocationAndCount: name : count];
        NSLog(@"Starting Gumball Machine service\r\r%@", gumballMachine);
        [connection setRootObject: gumballMachine];
        [[NSRunLoop currentRunLoop] run]; // never returns
    }
    return 0;
}

