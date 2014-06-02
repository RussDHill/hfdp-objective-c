//
//  MyFrame.m
//  Frame
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "MyFrame.h"

@implementation MyFrame

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    NSString* msg = @"I rule!!";
    [msg drawInRect:dirtyRect withAttributes:
         [NSDictionary dictionaryWithObjectsAndKeys:
         [NSFont fontWithName:@"HelveticaNeue-Bold" size:64], NSFontAttributeName,
         [NSColor blackColor], NSForegroundColorAttributeName,
         nil]];
}

@end
