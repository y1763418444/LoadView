//
//  ViewController.m
//  LoadView
//
//  Created by msy on 2017/9/5.
//  Copyright © 2017年 YM. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ActivityIndicator.h"

@interface ViewController (){
    NSTimer *timer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)testTip1:(id)sender {
    [self.view showTipViewAtCenter:@"出现提示内容，触摸消失！"];
}

- (IBAction)testTip2:(id)sender {
    [self.view showTipViewAtCenter:@"出现提示内容，倒计时消失！" timer:2];
}

- (IBAction)testTip3:(id)sender {
    [self.view showTipViewAtCenter:@"出现提示内容" message:@"我是消息体,我真是消息体"];
}

- (IBAction)testTip4:(id)sender {
    [self.view showTipViewAtCenter:@"出现提示内容，只是Y位置自定义" posY:50];
}
- (IBAction)testTip5:(id)sender {
    [self.view showActivityViewAtCenter];
    timer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(tip5) userInfo:nil repeats:NO];
}
- (IBAction)testTip6:(id)sender {
    [self.view showHUDIndicatorViewAtCenter:@"Loading..."];
    timer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(tip6) userInfo:nil repeats:NO];
}


- (void)tip5{
    [self.view hideActivityViewAtCenter];
    [timer invalidate];
}

- (void)tip6{
    [self.view hideHUDIndicatorViewAtCenter];
    [timer invalidate];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
