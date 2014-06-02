//
//  MyFrame.m
//  VirtualProxy
//
//  Created by Russell Hill on 30/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "MyFrame.h"
#import "ImageProxy.h"

@implementation MyFrame

- (id)initWithFrame: (NSRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        _url = @"http://images.amazon.com/images/P/B00009XBYK.01.LZZZZZZZ.jpg";
    }
    
    return self;
}

- (void)drawRect: (NSRect)dirtyRect
{
    if (_url == nil)
        _url = @"http://images.amazon.com/images/P/B00009XBYK.01.LZZZZZZZ.jpg";
    
    ImageProxy* imageProxy = [[ImageProxy alloc] initWithUrl: _url];
    [imageProxy drawIcon:self :dirtyRect];
}

- (BOOL)acceptsFirstResponder {
    return YES;
}

- (void)onAmbient: (id)sender {
	_url = @"http://images.amazon.com/images/P/B000003S2K.01.LZZZZZZZ.jpg";
    [self setNeedsDisplay: YES];
}

- (void)onBudda: (id)sender {
	_url = @"http://images.amazon.com/images/P/B00009XBYK.01.LZZZZZZZ.jpg";
	[self setNeedsDisplay: YES];
}

- (void)onIma: (id)sender {
	_url = @"http://images.amazon.com/images/P/B000005IRM.01.LZZZZZZZ.jpg";
	[self setNeedsDisplay: YES];
}

- (void)onKarma: (id)sender {
	_url = @"http://images.amazon.com/images/P/B000005DCB.01.LZZZZZZZ.jpg";
	[self setNeedsDisplay: YES];
}

- (void)onMcmxc: (id)sender {
	_url = @"http://images.amazon.com/images/P/B000002URV.01.LZZZZZZZ.jpg";
	[self setNeedsDisplay: YES];
}

- (void)onNorth: (id)sender {
	_url = @"http://images.amazon.com/images/P/B000003SFN.01.LZZZZZZZ.jpg";
	[self setNeedsDisplay: YES];
}

- (void)onSelected: (id)sender {
	_url = @"http://images.amazon.com/images/P/B000002MNZ.01.LZZZZZZZ.jpg";
	[self setNeedsDisplay: YES];
}

@end
