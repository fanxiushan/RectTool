//
//  NSView+Extension.h
//  FRRectTool
//
//  Created by Fan's iMac  on 11/27/17.
//  Copyright © 2017 Fan's iMac . All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSView (Extension)

- (CGFloat)width;
- (CGFloat)height;

- (NSPoint)origin;
- (void)setOrigin:(NSPoint)origin;

- (NSSize)size;
- (void)setSize:(NSSize)size;

- (CGFloat)x;
- (CGFloat)y;

- (void)setX:(CGFloat)y;
- (void)setY:(CGFloat)y;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;

@end
