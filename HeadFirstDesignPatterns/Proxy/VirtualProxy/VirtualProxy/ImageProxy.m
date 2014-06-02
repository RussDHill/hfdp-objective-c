//
//  ImageProxy.m
//  VirtualProxy
//
//  Created by Russell Hill on 30/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "ImageProxy.h"
#import "ImageIcon.h"

@implementation ImageProxy

- (id) initWithUrl: (NSString*)url {
    if (!(self = [super init]))
		return nil;
    
    _url = url;
    _retrieving = false;
	
	return self;
}

- (void) drawIcon: (NSView*)view : (NSRect)dirtyRect {
    
    if ([self isFileReady]) {
        NSString* filePath = [self getTempDirFile];
        _imageIcon = [[ImageIcon alloc] initByReferencingFile:filePath];
        [_imageIcon drawIcon:view :dirtyRect];
    } else {
        NSString* msg = @"Loading CD cover, please wait...";
        [msg drawInRect: dirtyRect withAttributes:
         [NSDictionary dictionaryWithObjectsAndKeys:
          [NSFont fontWithName:@"HelveticaNeue-Bold" size:32], NSFontAttributeName,
          [NSColor blackColor], NSForegroundColorAttributeName, nil]];
        if (!_retrieving) {
            _retrieving = true;
            
            dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
            dispatch_async(queue, ^{
                if ([self urlDownloadToFile]) {
                    dispatch_sync(dispatch_get_main_queue(), ^{
                        [view setNeedsDisplay: YES];
                    });
                }
            });
            
        }
    }
}

- (NSString*) getTempDirFile {
    NSString* fileName = [NSString stringWithFormat: @"%@.jpg", [[_url lastPathComponent] stringByDeletingPathExtension]];
    NSString* tempDirFile = [NSTemporaryDirectory() stringByAppendingPathComponent: [NSString stringWithFormat: @"/%@", fileName]];
    
    return tempDirFile;
}

- (BOOL) isFileReady {
    NSString* fileName = [self getTempDirFile];
    NSFileManager* fileManager =[NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath: fileName]) {
        return YES;
    }
    return NO;
}

- (BOOL) urlDownloadToFile {
    NSData* dataFromUrl = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: _url]];
    if ([dataFromUrl length] < 100) {
        return NO;
    }
    NSFileManager* fileManager =[NSFileManager defaultManager];
    return [fileManager createFileAtPath: [self getTempDirFile] contents: dataFromUrl attributes: nil];
}

@end
