//
//  ViewController.m
//  RFDropDownMenu
//
//  Created by 冯剑 on 2017/10/31.
//  Copyright © 2017年 冯剑. All rights reserved.
//

#import "ViewController.h"
#import "RFDropDownMenu.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    RFDropDownMenu * yearMenu = [[RFDropDownMenu alloc] initWithFrame:CGRectMake(50, 100, 100, 24)];
    yearMenu.rowHeight = 24;
    yearMenu.datas = @[@"2017年",@"2016年",@"2015年",@"2014年"];
    yearMenu.autoCloseWhenSelected = YES;
    yearMenu.cellClickedBlock = ^(NSString *title, NSInteger index) {
        NSLog(@"%ld-%@",(long)index,title);
    };
    
    [self.view addSubview:yearMenu];
    
    
    RFDropDownMenu * peomMenu = [[RFDropDownMenu alloc] initWithFrame:CGRectMake(200, 100, 100, 24)];
    peomMenu.rowHeight = 24;
    peomMenu.datas = @[@"蒹葭苍苍",@"白露为霜",@"所谓伊人",@"在水一方",@"溯洄从之",@"道阻且长",@"溯游从之",@"宛在水中央"];
    [self.view addSubview:peomMenu];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
