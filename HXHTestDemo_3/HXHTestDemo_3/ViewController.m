//
//  ViewController.m
//  HXHTestDemo_3
//
//  Created by 张强 on 2017/3/5.
//  Copyright © 2017年 ColorPen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (assign, nonatomic) NSInteger count;

/** 显示数字 */
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

/** 减一按钮 */
@property (weak, nonatomic) IBOutlet UIButton *subButton;

/** 加一按钮 */
@property (weak, nonatomic) IBOutlet UIButton *addButton;

@end

@implementation ViewController

- (IBAction)didPressSubButton:(UIButton *)sender {
    self.count--;
}
- (IBAction)didPressAddButton:(UIButton *)sender {
    self.count++;
}

- (void)setCount:(NSInteger)count {
    _count = count;
    self.countLabel.text = [NSString stringWithFormat:@"%@", @(count)];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.count = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
