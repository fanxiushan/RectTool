//
//  NSRectPanel.h
//  FRRectTool
//
//  Created by xiushan.fan on 2017/11/27.
//  Copyright © 2017年 Fan's iMac . All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FRRectPanel : NSWindow

- (void)beginSheet:(NSWindow *)tMainWindow completionHandler:(void (^)(NSModalResponse returnCode))handler;


//- (void)beginSheet:(NSWindow *)tWindow completionHandler
//_mainWindow = mainWindow;
//[self loginServiceWindow];
//[loginServiceWindow makeFirstResponder:self.view];
//[_mainWindow beginSheet:loginServiceWindow completionHandler:handler];


@end
