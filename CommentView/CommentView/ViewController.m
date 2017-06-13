//
//  ViewController.m
//  CommentView
//
//  Created by zhangming on 17/6/13.
//  Copyright © 2017年 youjiesi. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableView.h"

#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    [self setUI];
}

- (void)setUI{
    
    NSMutableView *view = [[NSMutableView alloc] initWithFrame:CGRectMake(0, ScreenHeight -60, ScreenWidth, 60)];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
