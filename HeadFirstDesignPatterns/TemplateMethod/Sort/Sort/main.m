//
//  main.m
//  Sort
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Duck.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray* ducks = [[NSMutableArray alloc]initWithObjects :
                                [[Duck alloc] initWithNameAndWeight : @"Daffy" : 8],
                                [[Duck alloc] initWithNameAndWeight : @"Dewey" : 2],
                                [[Duck alloc] initWithNameAndWeight : @"Howard" : 7],
                                [[Duck alloc] initWithNameAndWeight : @"Louie" : 2],
                                [[Duck alloc] initWithNameAndWeight : @"Donald" : 10],
                                [[Duck alloc] initWithNameAndWeight : @"Huey" : 2],
                                nil];
        
        NSLog(@"Before sorting:");
        for (Duck* duck in ducks)
            NSLog(@"%@", duck);
        
        NSArray* sortedDucks = [ducks sortedArrayUsingSelector:@selector(compare:)];
        
        NSLog(@"After sorting:");
        for (Duck* duck in sortedDucks)
            NSLog(@"%@", duck);
       
    }
    return 0;
}

