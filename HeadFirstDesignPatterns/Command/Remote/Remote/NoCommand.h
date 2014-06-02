//
//  NoCommand.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Command.h"

@interface NoCommand : NSObject<Command>
- (void)execute;
- (NSString*)description;
@end
