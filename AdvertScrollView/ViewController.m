//
//  ViewController.m
//  AdvertScrollView
//
//  Created by 宇玄丶 on 2017/3/29.
//  Copyright © 2017年 北京116工作室. All rights reserved.
//

#import "ViewController.h"
#import "AdvertScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    AdvertScrollView *advertScrollView = [[AdvertScrollView alloc]initWithFrame:CGRectMake(50, 200, 230, 30)];
    advertScrollView.messageArray = @[@"1、夜空中最亮的星",@"2、韩国赛脸，就嘚瑟吧，吊打你们",@"3、小学生又放假了。",@"4、马云太牛逼了。", @"5、小黄车，最好骑的共享单车"];
    [advertScrollView setBgColor:[UIColor whiteColor] textColor:[UIColor orangeColor] textFont:[UIFont systemFontOfSize:13]];
    [advertScrollView setScrollDuration:0.5 stayDuration:3];
    advertScrollView.hasGradient = YES;
    
    [advertScrollView changeTapMarqueeAction:^(NSInteger index) {
        
        NSLog(@"你点击了第 %ld 个button！内容：%@", index, advertScrollView.messageArray[index]);
        
    }];
    [advertScrollView start];
    
    [self.view addSubview:advertScrollView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
