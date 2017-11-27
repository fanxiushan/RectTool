//
//  FRLeftView.m
//  FRRectTool
//
//  Created by Fan's iMac  on 11/27/17.
//  Copyright © 2017 Fan's iMac . All rights reserved.
//

#import "FRLeftView.h"

@implementation FRLeftView

- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.addRectBtn = [[NSButton alloc] initWithFrame:NSMakeRect(0, 0, frame.size.width, 50)];
        [self addSubview:self.addRectBtn];
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
}

@end
