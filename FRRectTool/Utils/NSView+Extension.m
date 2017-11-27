
//
//  NSView+Extension.m
//  FRRectTool
//
//  Created by Fan's iMac  on 11/27/17.
//  Copyright © 2017 Fan's iMac . All rights reserved.
//

#import "NSView+Extension.h"

@implementation NSView (Extension)



- (NSSize)size
{
    return self.frame.size;
}

- (void)setSize:(NSSize)size
{
    NSRect rect = self.frame;
    rect.size = size;
    [self setFrame:rect];
}

- (NSPoint)origin
{
    return self.frame.origin;
}

- (void)setOrigin:(NSPoint)origin
{
    NSRect rect = self.frame;
    rect.origin = origin;
    [self setFrame:rect];
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}


- (void)setX:(CGFloat)x;
{
    NSRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y;
{
    NSRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setWidth:(CGFloat)width;
{
    NSRect bounds = self.frame;
    bounds.size.width = width;
    self.frame = bounds;
}

- (void)setHeight:(CGFloat)height;
{
    NSRect bounds = self.frame;
    bounds.size.height = height;
    self.frame = bounds;
}


@end
