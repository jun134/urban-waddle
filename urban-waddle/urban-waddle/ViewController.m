//
//  ViewController.m
//  urban-waddle
//
//  Created by dingjun on 16/9/19.
//  Copyright © 2016年 urbanwaddle. All rights reserved.
//

#import "ViewController.h"

#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    UILabel *label = [UILabel new];
    label.text = @"Masonry Label";
    label.textColor = [UIColor yellowColor];
    [self.view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
    }];
    
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(label.mas_bottom).mas_offset(5);
        make.left.mas_equalTo(15);
        make.right.mas_equalTo(-15);
        make.height.mas_equalTo(50);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
