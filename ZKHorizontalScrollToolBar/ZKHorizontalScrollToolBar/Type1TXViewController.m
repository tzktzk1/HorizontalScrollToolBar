//
//  Type1TXViewController.m
//  ZKHorizontalScrollToolBar
//
//  Created by 郑凯 on 2016/11/30.
//  Copyright © 2016年 tzktzk1. All rights reserved.
//

#import "Type1TXViewController.h"
#import "ChildViewController.h"

@interface Type1TXViewController ()

@end

@implementation Type1TXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"腾讯视频";
    
    CGFloat y = self.navigationController?64:0;
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
    
    // 设置搜索框
    CGFloat searchH = 44;
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, y, screenW, searchH)];
    [self.view addSubview:searchBar];
    
    // 添加所有子控制器
    [self setUpAllViewController];
    
    // 设置整体内容尺寸（包含标题滚动视图和底部内容滚动视图）
    [self setUpContentViewFrame:^(UIView *contentView) {
        
        CGFloat contentX = 0;
        
        CGFloat contentY = CGRectGetMaxY(searchBar.frame);
        
        CGFloat contentH = screenH - contentY;
        
        contentView.frame = CGRectMake(contentX, contentY, screenW, contentH);
        
    }];
    
    /****** 标题渐变 ******/
    // 推荐方式(设置标题颜色渐变) // 默认RGB样式
    [self setUpTitleGradient:^(HSTB_TitleColorGradientStyle *titleColorGradientStyle, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor) {
        *norColor = [UIColor blackColor];
        *selColor = [UIColor redColor];
    }];
    
    /****** 设置遮盖 ******/
    // *推荐方式(设置遮盖)
    [self setUpCoverEffect:^(UIColor **coverColor, CGFloat *coverCornerRadius) {
        
        // 设置蒙版颜色
        *coverColor = [UIColor colorWithWhite:0.7 alpha:0.4];
        
        // 设置蒙版圆角半径
        *coverCornerRadius = 13;
    }];
}

// 添加所有子控制器
- (void)setUpAllViewController
{
    
    // 推荐
    ChildViewController *wordVc1 = [[ChildViewController alloc] init];
    wordVc1.title = @"推荐";
    [self addChildViewController:wordVc1];
    
    // 热点
    ChildViewController *wordVc2 = [[ChildViewController alloc] init];
    wordVc2.title = @"热点";
    [self addChildViewController:wordVc2];
    
    // 视频
    ChildViewController *wordVc3 = [[ChildViewController alloc] init];
    wordVc3.title = @"视频";
    [self addChildViewController:wordVc3];
    
    // 社会
    ChildViewController *wordVc4 = [[ChildViewController alloc] init];
    wordVc4.title = @"社会";
    [self addChildViewController:wordVc4];
    
    // 娱乐
    ChildViewController *allVc = [[ChildViewController alloc] init];
    allVc.title = @"娱乐";
    [self addChildViewController:allVc];
    
    // 科技
    ChildViewController *videoVc = [[ChildViewController alloc] init];
    videoVc.title = @"科技";
    [self addChildViewController:videoVc];
    
    // 汽车
    ChildViewController *voiceVc = [[ChildViewController alloc] init];
    voiceVc.title = @"汽车";
    [self addChildViewController:voiceVc];
    
    // 体育
    ChildViewController *pictureVc = [[ChildViewController alloc] init];
    pictureVc.title = @"体育";
    [self addChildViewController:pictureVc];
    
    // 财经
    ChildViewController *wordVc = [[ChildViewController alloc] init];
    wordVc.title = @"财经";
    [self addChildViewController:wordVc];
    
    // 军事
    ChildViewController *junshi = [[ChildViewController alloc] init];
    junshi.title = @"军事";
    [self addChildViewController:junshi];
    
    // 国际
    ChildViewController *guoji = [[ChildViewController alloc] init];
    guoji.title = @"国际";
    [self addChildViewController:guoji];
    
    // 段子
    ChildViewController *duanzi = [[ChildViewController alloc] init];
    duanzi.title = @"段子";
    [self addChildViewController:duanzi];
    
    // 趣图
    ChildViewController *qutu = [[ChildViewController alloc] init];
    qutu.title = @"趣图";
    [self addChildViewController:qutu];
    
    // 健康
    ChildViewController *jiankang = [[ChildViewController alloc] init];
    jiankang.title = @"健康";
    [self addChildViewController:jiankang];
    
    // 正能量
    ChildViewController *zhengnengliang = [[ChildViewController alloc] init];
    zhengnengliang.title = @"正能量";
    [self addChildViewController:zhengnengliang];
}

@end


