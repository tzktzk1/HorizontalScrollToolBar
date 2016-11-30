//
//  MainTableViewController.m
//  ZKHorizontalScrollToolBar
//
//  Created by 郑凯 on 2016/11/30.
//  Copyright © 2016年 tzktzk1. All rights reserved.
//

#import "MainTableViewController.h"
#import "Type1TXViewController.h"
#import "Type2JRTTViewController.h"
#import "Type3WYViewController.h"
#import "Type4XMLYViewController.h"

@interface MainTableViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.title = @"Demo";
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Lazy

- (UITableView *)tableView
{
    _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    CGRect rect = [UIScreen mainScreen].bounds;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.frame = rect;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    return _tableView;
}

- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        NSArray *arr = @[@"腾讯",@"今日头条", @"网易",@"喜马拉雅"];
        _dataSource = [NSMutableArray arrayWithArray:arr];
    }
    return _dataSource;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *reusableID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusableID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusableID];
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
        
        UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0, cell.bounds.size.height - 0.5, cell.bounds.size.width, 0.5)];
        line.backgroundColor = [UIColor lightGrayColor];
        [cell addSubview:line];
    }
    
    cell.textLabel.text = _dataSource[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIViewController *controller = nil;
    switch (indexPath.row) {
        case 0:
            controller = [[Type1TXViewController alloc] init];
            break;
        case 1:
            controller = [[Type2JRTTViewController alloc] init];
            break;
        case 2:
            controller = [[Type3WYViewController alloc] init];
            break;
        case 3:
            controller = [[Type4XMLYViewController alloc] init];
            break;
            
        default:
            break;
    }
    
    if (controller) {
        controller.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:controller animated:YES];
    }
}

@end
