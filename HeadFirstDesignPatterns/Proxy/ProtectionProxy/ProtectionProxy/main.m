//
//  main.m
//  ProtectionProxy
//
//  Created by Russell Hill on 05/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MatchMakingTestDrive.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        MatchMakingTestDrive* test = [MatchMakingTestDrive new];
        [test drive];
        
    }
    return 0;
}

