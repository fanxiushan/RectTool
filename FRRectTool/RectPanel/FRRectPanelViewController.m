//
//  FRRectPanelViewController.m
//  FRRectTool
//
//  Created by xiushan.fan on 2017/11/27.
//  Copyright © 2017年 Fan's iMac . All rights reserved.
//

#import "FRRectPanelViewController.h"
#import "FRRectPanelView.h"

@interface FRRectPanelViewController () {
    FRRectPanelView *rectPanelView;
}

@end

@implementation FRRectPanelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    rectPanelView = [[FRRectPanelView alloc] initWithFrame:self.view.bounds];
    rectPanelView.okBtn.target = self;
    rectPanelView.okBtn.action = @selector(ok:);
    rectPanelView.cancelBtn.target = self;
    rectPanelView.cancelBtn.action = @selector(cancel:);
    
    self.view = rectPanelView;
}

- (void)ok:(id)sender {
    //
}




@end
