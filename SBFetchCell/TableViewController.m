//
//  TableViewController.m
//  SBFetchCell
//
//  Created by Noah on 2018/6/8.
//  Copyright © 2018年 Noah. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (weak, nonatomic) IBOutlet UITableViewCell *labelCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *buttonCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *imageCell;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.labelCell.backgroundColor = [UIColor redColor];
    self.buttonCell.backgroundColor = [UIColor yellowColor];
    self.imageCell.backgroundColor = [UIColor lightGrayColor];
    self.image.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell;
//    switch (indexPath.row) {
//        case 0:
//        {
////            cell = [tableView dequeueReusableCellWithIdentifier:@"labelCell"];
////            return cell;
//            self.labelCell.backgroundColor = [UIColor cyanColor];
//            return self.labelCell;
//        }
//            break;
//        case 1:
//        {
////            cell = [tableView dequeueReusableCellWithIdentifier:@"imageCell"];
////            return cell;
//            self.imageCell.backgroundColor = [UIColor cyanColor];
//            return self.imageCell;
//        }
//            break;
//        case 2:
//        {
//            //            cell = [tableView dequeueReusableCellWithIdentifier:@"buttonCell"];
//            //            return cell;
//            self.buttonCell.backgroundColor = [UIColor cyanColor];
//            return self.buttonCell;
//        }
//            break;
//        case 3:
//        {
//            cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//            if (cell == nil) {
//                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
//            }
//            cell.textLabel.text = @"第三行";
//            cell.detailTextLabel.text = @"subtitle";
//            return cell;
//        }
//            break;
//            
//        default:
//            return nil;
//            break;
//    }
//}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
