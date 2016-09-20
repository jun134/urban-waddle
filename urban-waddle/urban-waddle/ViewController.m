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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
