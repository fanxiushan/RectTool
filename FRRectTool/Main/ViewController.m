//
//  ViewController.m
//  FRRectTool
//
//  Created by Fan's iMac  on 11/27/17.
//  Copyright © 2017 Fan's iMac . All rights reserved.
//

#import "ViewController.h"
#import "FRLeftView.h"
#import "FRRightView.h"
#import "NSView+Extension.h"
#import "FRRectPanel.h"

@interface ViewController() {
    FRLeftView *leftView;
    FRRightView *rightView;
}

@property (nonatomic,strong) NSMutableArray *rectArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rectArray = [NSMutableArray arrayWithCapacity:0];
    
    leftView = [[FRLeftView alloc] initWithFrame:NSMakeRect(0, 0, 100, self.view.frame.size.height)];
    leftView.addRectBtn.target = self;
    leftView.addRectBtn.action = @selector(addRect:);
    [self.view addSubview:leftView];
    rightView = [[FRRightView alloc] initWithFrame:NSMakeRect(100, 0, self.view.frame.size.width - 100, self.view.frame.size.height)];
    [self.view addSubview:rightView];
}

- (void)addRect:(id)sender {
    FRRectPanel *rectPanel = [[FRRectPanel alloc] initWithContentRect:NSMakeRect(0, 0, 500, 300) styleMask:NSWindowStyleMaskBorderless|NSWindowStyleMaskTitled backing:NSBackingStoreBuffered defer:NO];
    [self.view.window beginSheet:rectPanel completionHandler:^(NSModalResponse returnCode) {
        NSLog(@"end panel");
    }];
    
//    [rightView refreshDisplayRects:self.rectArray];
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
}


@end
