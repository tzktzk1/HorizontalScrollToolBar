//
//  HSTB_DisplayViewController.h
//  ZKHorizontalScrollToolBar
//
//  Created by 郑凯 on 2016/11/30.
//  Copyright © 2016年 tzktzk1. All rights reserved.
//

#import <UIKit/UIKit.h>

// 标题颜色渐变样式
typedef enum : NSUInteger {
    HSTB_TitleColorGradientStyleRGB,    // RGB:默认RGB样式
    HSTB_TitleColorGradientStyleFill    // 填充
} HSTB_TitleColorGradientStyle;

@interface HSTB_DisplayViewController : UIViewController

/**************************************【内容】************************************/
/**
 内容是否需要全屏展示
 YES :  全屏：内容占据整个屏幕，会有穿透导航栏效果，需要手动设置tableView额外滚动区域
 NO  :  内容从标题下展示
 */
@property (nonatomic, assign) BOOL isFullScreen;

/**
 根据角标，选中对应的控制器
 */
@property (nonatomic, assign) NSInteger selectIndex;

/**
 如果_isfullScreen = Yes，这个方法就不好使。
 
 设置整体内容的frame,包含（标题滚动视图和内容滚动视图）
 */
- (void)setUpContentViewFrame:(void(^)(UIView *contentView))contentBlock;

/**
 刷新标题和整个界面，在调用之前，必须先确定所有的子控制器。
 */
- (void)refreshDisplay;

/***********************************【顶部标题样式】********************************/
- (void)setUpTitleEffect:(void(^)(UIColor **titleScrollViewColor,UIColor **norColor,UIColor **selColor,UIFont **titleFont,CGFloat *titleHeight,CGFloat *titleWidth))titleEffectBlock;

/***********************************【下标样式】***********************************/
- (void)setUpUnderLineEffect:(void(^)(BOOL *isUnderLineDelayScroll,CGFloat *underLineH,UIColor **underLineColor,BOOL *isUnderLineEqualTitleWidth))underLineBlock;

/**********************************【字体缩放】************************************/
- (void)setUpTitleScale:(void(^)(CGFloat *titleScale))titleScaleBlock;

/**********************************【颜色渐变】************************************/
- (void)setUpTitleGradient:(void(^)(HSTB_TitleColorGradientStyle *titleColorGradientStyle,UIColor **norColor,UIColor **selColor))titleGradientBlock;

/**********************************【遮盖】************************************/
- (void)setUpCoverEffect:(void(^)(UIColor **coverColor,CGFloat *coverCornerRadius))coverEffectBlock;

@end
