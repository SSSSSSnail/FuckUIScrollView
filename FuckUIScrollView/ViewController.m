//
//  ViewController.m
//  FuckUIScrollView
//
//  Created by Snail on 24/10/14.
//  Copyright (c) 2014 Snail. All rights reserved.
//

#import "ViewController.h"

CGSize ScreenSize();

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentSizeWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentSizeHeightConstraint;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    /*
     * To 辉哥， 这里设置ScrollView的ContentSize;
     * 这里设置了5横屏， 俩竖屏滚动。
     * 仅供辉哥参考。
     */
    _contentSizeWidthConstraint.constant = ScreenSize().width * 5;
    _contentSizeHeightConstraint.constant = ScreenSize().height * 2;
}

@end

CGSize ScreenSize()
{
    return [UIScreen mainScreen].bounds.size;
}