//
//  TVOnCommand.m
//  Party
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "TVOnCommand.h"
#import "TV.h"

@implementation TVOnCommand

- (id)initWithTV: (TV*)tv {

    if (!(self = [super init]))
        return nil;
        
    _tv = tv;
        
    return self;
}

- (void)execute {
    [_tv on];
}

- (void)undo {
    [_tv off];
}
    
@end

