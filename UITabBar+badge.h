//
//  UITabBar+badge.h
//  TabbarTest
//
//  Created by wangfaguo on 16/3/14.
//  Copyright © 2016年 wangfaguo. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
 * tabbar 显示红点
 */
@interface UITabBar (badge)

-(void)showDotAtItemIndex:(NSInteger)index;
-(void)hideDotAtItemIndex:(NSInteger)index;

@end
