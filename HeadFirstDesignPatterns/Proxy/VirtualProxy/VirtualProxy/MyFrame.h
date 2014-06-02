//
//  MyFrame.h
//  VirtualProxy
//
//  Created by Russell Hill on 30/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MyFrame : NSView

@property NSString* url;

- (void) onAmbient: (id) sender;
- (void) onBudda: (id) sender;
- (void) onIma: (id) sender;
- (void) onKarma: (id) sender;
- (void) onMcmxc: (id) sender;
- (void) onNorth: (id) sender;
- (void) onSelected: (id) sender;
- (BOOL) acceptsFirstResponder;
@end
