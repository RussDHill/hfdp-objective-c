//
//  Icon.h
//  VirtualProxy
//
//  Created by Russell Hill on 04/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Icon <NSObject>
- (void) drawIcon: (NSView*)view : (NSRect)dirtyRect;
@end
