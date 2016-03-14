//
//  UITabBar+badge.m
//  TabbarTest
//
//  Created by wangfaguo on 16/3/14.
//  Copyright © 2016年 wangfaguo. All rights reserved.
//
#define TabbarItemNums 3.0    //tabbar的数量 如果是5个设置为5.0

#import "UITabBar+badge.h"

@implementation UITabBar (badge)


//显示小红点
-(void)showDotAtItemIndex:(NSInteger)index{
    //移除之前的小红点
    [self removeBadgeOnItemIndex:index];
    
    //新建小红点
    UIView *badgeView = [[UIView alloc]init];
    badgeView.tag = 8888 + index;
    badgeView.layer.cornerRadius = 5;//圆形
    badgeView.backgroundColor = [UIColor redColor];//颜色：红色
    CGRect tabFrame = self.frame;
    
    //确定小红点的位置
    float percentX = (index +0.6) / TabbarItemNums;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    CGFloat y = ceilf(0.1 * tabFrame.size.height);
    badgeView.frame = CGRectMake(x, y, 10, 10);//圆形大小为10
    [self addSubview:badgeView];
}

//隐藏小红点
-(void)hideDotAtItemIndex:(NSInteger)index{
    //移除小红点
    [self removeBadgeOnItemIndex:index];
}
//移除小红点
- (void)removeBadgeOnItemIndex:(NSInteger)index{
    //按照tag值进行移除
    for (UIView *subView in self.subviews) {
        if (subView.tag == 8888 + index) {
            [subView removeFromSuperview];
        }
    }
}
@end
