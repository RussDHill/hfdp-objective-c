//
//  ImageIcon.h
//  VirtualProxy
//
//  Created by Russell Hill on 04/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Icon.h"

@interface ImageIcon : NSObject<Icon>
{
    NSImage* _image;
}
- (id) initByReferencingFile: (NSString*) filename;
- (void) drawIcon: (NSView*)view : (NSRect)dirtyRect;
@end
