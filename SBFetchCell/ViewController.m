//
//  ViewController.m
//  SBFetchCell
//
//  Created by Noah on 2018/6/8.
//  Copyright © 2018年 Noah. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"
#import "SecViewController.h"
#import "TableViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestCell"];
            cell.imageV.backgroundColor = [UIColor orangeColor];
            cell.title.text = @"跳转到通过Xib创建cell的页面";
            cell.subTitle.text = @"Hello subtitle";
            return cell;
        }
            break;
        case 1:
        {
            TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestCell"];
            cell.imageV.backgroundColor = [UIColor orangeColor];
            cell.title.text = @"跳转到通过storyboard创建cell的页面";
            cell.subTitle.text = @"Hello subtitle";
            return cell;
        }
            break;
            
        default:
            return nil;
            break;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 66;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
            SecViewController *sec = [[SecViewController alloc]init];
            [self.navigationController pushViewController:sec animated:YES];
        }
            break;
        case 1:
        {
            UIStoryboard *sb = [UIStoryboard storyboardWithName:@"TableViewController" bundle:[NSBundle mainBundle]];
            TableViewController *tableV = [sb instantiateInitialViewController];
            [self.navigationController pushViewController:tableV animated:YES];
        }
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
