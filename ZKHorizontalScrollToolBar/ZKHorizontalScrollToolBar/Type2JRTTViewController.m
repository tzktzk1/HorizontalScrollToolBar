//
//  Type2JRTTViewController.m
//  ZKHorizontalScrollToolBar
//
//  Created by 郑凯 on 2016/11/30.
//  Copyright © 2016年 tzktzk1. All rights reserved.
//

#import "Type2JRTTViewController.h"
#import "ChildViewController.h"

@interface Type2JRTTViewController ()

@end

@implementation Type2JRTTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"今日头条";
    
    // 模仿网络延迟，0.2秒后，才知道有多少标题
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        // 移除之前所有子控制器
        [self.childViewControllers makeObjectsPerformSelector:@selector(removeFromParentViewController)];
        
        // 把对应标题保存到控制器中，并且成为子控制器，才能刷新
        // 添加所有新的子控制器
        [self setUpAllViewController];
        
        // 注意：必须先确定子控制器
        [self refreshDisplay];
        
    });
    
    /*  设置标题渐变：标题填充模式 */
    [self setUpTitleGradient:^(HSTB_TitleColorGradientStyle *titleColorGradientStyle, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor) {
        // 标题填充模式
        *titleColorGradientStyle = HSTB_TitleColorGradientStyleFill;
    }];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.selectIndex = 0;
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


