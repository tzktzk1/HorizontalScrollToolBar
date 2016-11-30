//
//  RequesCover.m
//  ZKHorizontalScrollToolBar
//
//  Created by 郑凯 on 2016/11/30.
//  Copyright © 2016年 tzktzk1. All rights reserved.
//

#import "RequesCover.h"

@interface RequesCover()

@property (nonatomic, strong) UILabel *tipLabel;

@end

@implementation RequesCover

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
        _tipLabel.backgroundColor = [UIColor whiteColor];
        _tipLabel.textAlignment = NSTextAlignmentCenter;
        _tipLabel.text = @"别着急！等等...";
        _tipLabel.textColor = [UIColor blueColor];
        _tipLabel.font = [UIFont boldSystemFontOfSize:16.0f];
        _tipLabel.center = self.center;
        [self addSubview:self.tipLabel];
        
        self.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}

@end
