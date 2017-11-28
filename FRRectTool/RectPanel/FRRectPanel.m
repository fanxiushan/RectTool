//
//  NSRectPanel.m
//  FRRectTool
//
//  Created by xiushan.fan on 2017/11/27.
//  Copyright © 2017年 Fan's iMac . All rights reserved.
//

#import "FRRectPanel.h"
#import "FRRectPanelViewController.h"

@interface FRRectPanel() {
    NSWindow *mainWindow;
}

@end

@implementation FRRectPanel

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSWindowStyleMask)style backing:(NSBackingStoreType)backingStoreType defer:(BOOL)flag {
    self = [super initWithContentRect:contentRect styleMask:style backing:backingStoreType defer:flag];
    if (self) {
        //
    }
    return self;
}

- (void)beginSheet:(NSWindow *)tMainWindow completionHandler:(void (^)(NSModalResponse returnCode))handler {
    mainWindow = tMainWindow;
    [mainWindow beginSheet:mainWindow completionHandler:handler];
    
}


@end
