//
//  QLTabBarViewController.m
//  TabbarTest
//
//  Created by wangfaguo on 16/3/14.
//  Copyright © 2016年 wangfaguo. All rights reserved.
//

#import "QLTabBarViewController.h"
#import "ViewController.h"
#import "UITabBar+badge.h"

@interface QLTabBarViewController ()

@end

@implementation QLTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置文字属性
    NSDictionary *attributesNormal = @{NSForegroundColorAttributeName:[UIColor grayColor]};
    NSDictionary *attributesSelected = @{NSForegroundColorAttributeName:[UIColor colorWithRed:0/ 255.0 green:168 / 255.0 blue:212 / 255.0 alpha:1.0]};
    //title位置偏移
    UIOffset titleOffset = UIOffsetMake(0, -2);
    //首页
    UIImage *homeImage = [[UIImage imageNamed:@"table_icon_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *homeSelectedImage = [[UIImage imageNamed:@"table_icon_home_over"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *homeItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:homeImage selectedImage:homeSelectedImage];
    homeItem.titlePositionAdjustment = titleOffset;
    [homeItem setTitleTextAttributes:attributesNormal forState:UIControlStateNormal];
    [homeItem setTitleTextAttributes:attributesSelected forState:UIControlStateSelected];
    //理财
    UIImage *financialImage = [[UIImage imageNamed:@"table_icon_financial_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *financialSelectedImage = [[UIImage imageNamed:@"table_icon_financial_over"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *financialItem = [[UITabBarItem alloc]initWithTitle:@"理财" image:financialImage selectedImage:financialSelectedImage];
    financialItem.titlePositionAdjustment = titleOffset;
    [financialItem setTitleTextAttributes:attributesNormal forState:UIControlStateNormal];
    [financialItem setTitleTextAttributes:attributesSelected forState:UIControlStateSelected];
    //我
    UIImage *memberImage = [[UIImage imageNamed:@"table_icon_member_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *memberSelectedImage = [[UIImage imageNamed:@"table_icon_member_over"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *memberItem = [[UITabBarItem alloc]initWithTitle:@"我" image:memberImage selectedImage:memberSelectedImage];
    memberItem.titlePositionAdjustment = titleOffset;
    [memberItem setTitleTextAttributes:attributesNormal forState:UIControlStateNormal];
    [memberItem setTitleTextAttributes:attributesSelected forState:UIControlStateSelected];
    
    ViewController *vc1 = [[ViewController alloc]init];
    ViewController *vc2 = [[ViewController alloc]init];
    ViewController *vc3 = [[ViewController alloc]init];
    UINavigationController *navi1 = [[UINavigationController alloc]initWithRootViewController:vc1];
    UINavigationController *navi2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    UINavigationController *navi3 = [[UINavigationController alloc]initWithRootViewController:vc3];
    navi1.tabBarItem = homeItem;
    navi2.tabBarItem = financialItem;
    navi3.tabBarItem = memberItem;
    [self setViewControllers:@[navi1,navi2,navi3]];
    homeItem.badgeValue = @"100";
    //显示红点
    [self.tabBar showDotAtItemIndex:1];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
