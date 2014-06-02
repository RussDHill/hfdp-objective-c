//
//  ImageProxy.h
//  VirtualProxy
//
//  Created by Russell Hill on 30/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Icon.h"

@interface ImageProxy: NSObject<Icon>
{
    id<Icon> _imageIcon;
    NSString* _url;
    bool _retrieving;
}
- (id) initWithUrl: (NSString*)url;
- (void) drawIcon: (NSView*)view : (NSRect)dirtyRect;
- (BOOL) isFileReady;
- (NSString*) getTempDirFile;
- (BOOL) urlDownloadToFile;
@end
