//
//  Type4XMLYViewController.m
//  ZKHorizontalScrollToolBar
//
//  Created by 郑凯 on 2016/11/30.
//  Copyright © 2016年 tzktzk1. All rights reserved.
//

#import "Type4XMLYViewController.h"
#import "ChildViewController.h"
#import "FullChildViewController.h"

@interface Type4XMLYViewController ()

@end

@implementation Type4XMLYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"喜马拉雅";
    
    // 添加所有子控制器
    [self setUpAllViewController];
    
    // 设置标题字体
    // 推荐方式
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight,CGFloat *titleWidth) {
        
        // 设置标题字体
        *titleFont = [UIFont systemFontOfSize:20];
        
    }];
    
    // 推荐方式（设置下标）
    [self setUpUnderLineEffect:^(BOOL *isUnderLineDelayScroll, CGFloat *underLineH, UIColor *__autoreleasing *underLineColor,BOOL *isUnderLineEqualTitleWidth) {
        // 标题填充模式
        *underLineColor = [UIColor redColor];
    }];
    
    // 设置全屏显示
    // 如果有导航控制器或者tabBarController,需要设置tableView额外滚动区域,详情请看FullFullChildViewController
    self.isFullScreen = YES;
}

// 添加所有子控制器
- (void)setUpAllViewController
{
    // 推荐
    FullChildViewController *wordVc1 = [[FullChildViewController alloc] init];
    wordVc1.title = @"推荐";
    [self addChildViewController:wordVc1];
    
    // 热点
    FullChildViewController *wordVc2 = [[FullChildViewController alloc] init];
    wordVc2.title = @"热点";
    [self addChildViewController:wordVc2];
    
    // 视频
    FullChildViewController *wordVc3 = [[FullChildViewController alloc] init];
    wordVc3.title = @"视频";
    [self addChildViewController:wordVc3];
    
    // 社会
    FullChildViewController *wordVc4 = [[FullChildViewController alloc] init];
    wordVc4.title = @"社会";
    [self addChildViewController:wordVc4];
    
    // 娱乐
    FullChildViewController *allVc = [[FullChildViewController alloc] init];
    allVc.title = @"娱乐";
    [self addChildViewController:allVc];
    
    // 科技
    FullChildViewController *videoVc = [[FullChildViewController alloc] init];
    videoVc.title = @"科技";
    [self addChildViewController:videoVc];
    
    // 汽车
    FullChildViewController *voiceVc = [[FullChildViewController alloc] init];
    voiceVc.title = @"汽车";
    [self addChildViewController:voiceVc];
    
    // 体育
    FullChildViewController *pictureVc = [[FullChildViewController alloc] init];
    pictureVc.title = @"体育";
    [self addChildViewController:pictureVc];
    
    // 财经
    FullChildViewController *wordVc = [[FullChildViewController alloc] init];
    wordVc.title = @"财经";
    [self addChildViewController:wordVc];
    
    // 军事
    FullChildViewController *junshi = [[FullChildViewController alloc] init];
    junshi.title = @"军事";
    [self addChildViewController:junshi];
    
    // 国际
    FullChildViewController *guoji = [[FullChildViewController alloc] init];
    guoji.title = @"国际";
    [self addChildViewController:guoji];
    
    // 段子
    FullChildViewController *duanzi = [[FullChildViewController alloc] init];
    duanzi.title = @"段子";
    [self addChildViewController:duanzi];
    
    // 趣图
    FullChildViewController *qutu = [[FullChildViewController alloc] init];
    qutu.title = @"趣图";
    [self addChildViewController:qutu];
    
    // 健康
    FullChildViewController *jiankang = [[FullChildViewController alloc] init];
    jiankang.title = @"健康";
    [self addChildViewController:jiankang];
    
    // 正能量
    FullChildViewController *zhengnengliang = [[FullChildViewController alloc] init];
    zhengnengliang.title = @"正能量";
    [self addChildViewController:zhengnengliang];
}

@end


