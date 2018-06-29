//
//  ViewController.m
//  ConfuseProjectDemo
//
//  Created by yanglei on 2018/6/29.
//  Copyright © 2018年 Lei.Y. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *displayLabel;
@property (nonatomic, strong) UIButton *displayButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    [self.view addSubview:self.displayLabel];
    
    self.displayButton.center = self.view.center;
    [self.view addSubview:self.displayButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Lazyload Method
- (UIButton *)displayButton {
    if (!_displayButton) {
        _displayButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_displayButton setTitle:@"显示欢迎词 ~ " forState:UIControlStateNormal];
        [_displayButton setFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30)];
        [_displayButton addTarget:self action:@selector(displayAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _displayButton;
}

- (UILabel *)displayLabel {
    if (!_displayLabel) {
        _displayLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, [UIScreen mainScreen].bounds.size.width, 40)];
        _displayLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _displayLabel;
}

- (void)displayAction:(id)sender {
    self.displayLabel.text = @"Welcome";
}

@end
