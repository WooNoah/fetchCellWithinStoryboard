//
//  XibTableViewCell.h
//  SBFetchCell
//
//  Created by Noah on 2018/6/8.
//  Copyright © 2018年 Noah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XibTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UISwitch *handler;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end
