//
//  MainTableViewController.h
//  ZKHorizontalScrollToolBar
//
//  Created by 郑凯 on 2016/11/30.
//  Copyright © 2016年 tzktzk1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewController : UIViewController

@property (nonatomic, strong) UITableView *tableView;           // TableView
@property (nonatomic, strong) NSMutableArray *dataSource;       // 数据源

@end


