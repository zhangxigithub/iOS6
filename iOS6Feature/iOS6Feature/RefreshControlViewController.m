//
//  RefreshControlViewController.m
//  iOS6Feature
//
//  Created by 张 玺 on 13-3-18.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "RefreshControlViewController.h"

@interface RefreshControlViewController ()

@end

@implementation RefreshControlViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        count = 0;
        self.refreshControl = [[UIRefreshControl alloc]init];
        self.refreshControl.attributedTitle = [[NSAttributedString alloc]initWithString:@"下拉刷新"];
        
        [self.refreshControl addTarget:self action:@selector(RefreshViewControlEventValueChanged) forControlEvents:UIControlEventValueChanged];
    }
    return self;
}
-(void)RefreshViewControlEventValueChanged
{
    self.refreshControl.attributedTitle = [[NSAttributedString alloc]initWithString:@"刷新中"];
    [self performSelector:@selector(handleData) withObject:nil afterDelay:1];
}
- (void) handleData
{
    count ++;
    [self.tableView reloadData];
    [self.refreshControl endRefreshing];
    self.refreshControl.attributedTitle = [[NSAttributedString alloc]initWithString:@"完成"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"UIRefreshControl";
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%d",count];
    
    return cell;
}


@end














