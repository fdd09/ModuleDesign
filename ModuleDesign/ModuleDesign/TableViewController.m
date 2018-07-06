//
//  TableViewController.m
//  ModuleDesign
//
//  Created by 冯东旺 on 2018/6/27.
//  Copyright © 2018年 冯东旺. All rights reserved.
//

#import "TableViewController.h"
#import "NFirstViewConrroller.h"


@interface TableViewController () <UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"路由类别";
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        NFirstViewConrroller *nVC = [[NFirstViewConrroller alloc] init];
        [self.navigationController pushViewController:nVC animated:YES];
    } else if (indexPath.row == 1) {
        
    } else if (indexPath.row == 2) {
        NFirstViewConrroller *nVC = [[NFirstViewConrroller alloc] init];
        [self.navigationController pushViewController:nVC animated:YES];
    } else if (indexPath.row == 3) {
        
    }
}
#pragma mark - setters and getters
- (NSMutableArray *)dataSource {
    if (!_dataSource) {
        _dataSource = [NSMutableArray arrayWithObjects:@"代理注册", @"target路由", @"普通路由", @"JRRouter", nil];
    }
    return _dataSource;
}

@end
