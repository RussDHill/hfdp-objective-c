//
//  ImageIcon.m
//  VirtualProxy
//
//  Created by Russell Hill on 04/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "ImageIcon.h"

@implementation ImageIcon

- (id) initByReferencingFile: (NSString*) filename
{
    if (!(self = [super init]))
		return nil;
	
    _image = [[NSImage alloc] initByReferencingFile:filename];
	
	return self;}

- (void) drawIcon: (NSView*)view : (NSRect)dirtyRect {
    [_image drawInRect:dirtyRect fromRect:NSZeroRect operation:NSCompositeSourceOver fraction:1 respectFlipped:YES hints:nil];
}

@end
