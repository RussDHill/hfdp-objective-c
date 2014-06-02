//
//  main.m
//  MiniDuckSimulator
//
//  Created by Russell Hill on 10/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "RubberDuck.h"
#import "DecoyDuck.h"
#import "ModelDuck.h"
#import "FlyRocketPowered.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        MallardDuck* mallard = [[MallardDuck alloc] init];
        RubberDuck* rubberDuckie = [[RubberDuck alloc] init];
        DecoyDuck* decoy = [[DecoyDuck alloc] init];
        ModelDuck* model = [[ModelDuck alloc] init];
        
        [mallard performQuack];
        [rubberDuckie performQuack];
        [decoy performQuack];
        
        [model performFly];
        [model setFlyBehavior: [[FlyRocketPowered alloc] init]];
        [model performFly];
        
    }
    
    return 0;
}
