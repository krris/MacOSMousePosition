//
//  MyView.m
//  MousePosition
//
//  Created by krris on 18/08/16.
//  Copyright © 2016 Krzysztof Werys. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (void)awakeFromNib {
    NSTrackingAreaOptions options = (NSTrackingActiveAlways | NSTrackingInVisibleRect |
                                     NSTrackingMouseEnteredAndExited | NSTrackingMouseMoved);

    NSTrackingArea *area = [[NSTrackingArea alloc] initWithRect:[self bounds]
                                                        options:options
                                                          owner:self
                                                       userInfo:nil];
    [self addTrackingArea:area];
}

- (void)mouseMoved:(NSEvent *)theEvent
{
    NSPoint position = [theEvent locationInWindow];
    NSLog(@"Mouse position: %@", NSStringFromPoint(position));
}

- (BOOL)acceptsFirstResponder
{
    return YES;
}

- (void)mouseDown:(NSEvent *)theEvent
{
    NSLog(@"Mouse down");
}

- (void)mouseEntered:(NSEvent *)theEvent
{
    NSLog(@"Mouse entererd tracking area");
}

- (void)mouseExited:(NSEvent *)theEvent
{
    NSLog(@"Mouse exited tracking area");
}

@end
