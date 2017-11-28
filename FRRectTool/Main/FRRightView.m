//
//  FRRightView.m
//  FRRectTool
//
//  Created by Fan's iMac  on 11/27/17.
//  Copyright © 2017 Fan's iMac . All rights reserved.
//

#import "FRRightView.h"

@interface FRRightView() {
    NSArray *rectArray;
}
@end

@implementation FRRightView

- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //
    }
    return self;
}

- (void)refreshDisplayRects:(NSArray *)tRectArray {
    rectArray = tRectArray;
    [self setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    if (rectArray.count == 0) {
        return;
    }
    for (NSString *rectStr in rectArray) {
        NSRect lastRect = NSRectFromString(rectStr);
        NSBezierPath *path = [NSBezierPath bezierPathWithRect:lastRect];
        [[NSColor systemRedColor] setStroke];
        [path stroke];
    }
}

@end


