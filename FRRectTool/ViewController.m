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

@interface ViewController() {
    FRLeftView *leftView;
    FRRightView *rightView;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    leftView = [[FRLeftView alloc] initWithFrame:NSMakeRect(0, 0, 100, self.view.frame.size.height)];
    leftView.addRectBtn.target = self;
    leftView.addRectBtn.action = @selector(addRect:);
    [self.view addSubview:leftView];
    rightView = [[FRRightView alloc] initWithFrame:NSMakeRect(100, 0, self.view.frame.size.width - 100, self.view.frame.size.height)];
    [self.view addSubview:rightView];
}

static int a = 1;

- (void)addRect:(id)sender {
    NSRect lastRect = NSMakeRect(50, 50, 100, 100);
    lastRect = CGRectOffset(lastRect, 5*a, 5*a);
    [rightView addDisplayRect:lastRect];
    a = a+1;
}



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
