//
//  ViewController.m
//  CHCircleGaugeViewDemo
//
//  Created by iwind on 15/5/11.
//  Copyright (c) 2015年 HanYang. All rights reserved.
//

#import "ViewController.h"
#import "CHCircleGaugeView.h"
#import "CircleStatus/NOCSView.h"
#import "NOCSPercentageColor.h"
#import "MMPlaceHolder.h"
@interface ViewController ()

@property (nonatomic, strong) NOCSView * csView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = CGRectMake(0, 0, 200, 200);
    self.csView = [[NOCSView alloc]initWithFrame:CGRectMake(50, 100, 320, 80)];
    [self.csView showPlaceHolderWithLineColor:[UIColor blackColor]];
    [self.view addSubview:self.csView];
    self.csView.backgroundColor = [UIColor lightGrayColor];

    [self.csView setPercentageColorArray:@[[[NOCSPercentageColor alloc]initWithTitle:@"好评23" color:[UIColor blueColor] percentage:0.5f],[[NOCSPercentageColor alloc]initWithTitle:@"中评15" color:[UIColor greenColor] percentage:0.3f]]];
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(80, 0, 60, 80)];
    view.backgroundColor = [UIColor yellowColor];
    [self.csView addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
