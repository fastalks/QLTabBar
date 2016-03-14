//
//  ViewController.m
//  TabbarTest
//
//  Created by wangfaguo on 16/3/11.
//  Copyright © 2016年 wangfaguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    // navigationBar 颜色
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0/ 255.0 green:168 / 255.0 blue:212 / 255.0 alpha:1.0];
    self.navigationController.navigationBar.backgroundColor = [UIColor colorWithRed:0/ 255.0 green:168 / 255.0 blue:212 / 255.0 alpha:1.0];
    //去掉阴影，黑线
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    // navigationBar 不透明
    self.navigationController.navigationBar.translucent = NO;
    
    //改变titleView既能隐藏title，又能使push以后的返回按钮title显示
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 40)];
    view.backgroundColor = [UIColor colorWithRed:0/ 255.0 green:168 / 255.0 blue:212 / 255.0 alpha:1.0];
    [view sizeToFit];
    self.navigationItem.titleView = view;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 100, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, 0, 70, 22);
    button1.backgroundColor = [UIColor redColor];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:button1];
    self.navigationItem.rightBarButtonItem = item;
    
}
-(void)buttonAction{
    ViewController *vc= [[ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
