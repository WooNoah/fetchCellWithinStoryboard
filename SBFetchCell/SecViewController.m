//
//  SecViewController.m
//  SBFetchCell
//
//  Created by Noah on 2018/6/8.
//  Copyright © 2018年 Noah. All rights reserved.
//

#import "SecViewController.h"
#import "XibCell.h"
#import "XibTableViewCell.h"

@interface SecViewController () <UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) UITableView *tabV;

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabV = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tabV.delegate = self;
    self.tabV.dataSource = self;
    [self.tabV registerNib:[UINib nibWithNibName:@"XibCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"XibCell"];
    [self.tabV registerNib:[UINib nibWithNibName:@"XibTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"XibTableViewCell"];
    [self.view addSubview:self.tabV];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            XibCell *cell = [tableView dequeueReusableCellWithIdentifier:@"XibCell"];
            [cell.leftBtn setTitle:@"第一行" forState:UIControlStateNormal];
            return cell;
        }
            break;
        case 1:
        {
            XibTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"XibTableViewCell"];
            cell.title.text = @"第二行";
            return cell;
        }
            break;
        case 2:
        {
            UITableViewCell *normalCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
            if (normalCell == nil) {
                normalCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
            }
            normalCell.textLabel.text = @"第三行";
            normalCell.detailTextLabel.text = @"subtitle";
            return normalCell;
        }
            break;
            
        default:
            return nil;
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
