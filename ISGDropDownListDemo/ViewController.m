//
//  ViewController.m
//  ISGDropDownListDemo
//
//  Created by isaac on 16/8/2.
//  Copyright © 2016年 ultrapower. All rights reserved.
//

#import "ViewController.h"
#import "ISGDropDownList.h"


@interface ViewController ()

/*! @brief <#name#> */
@property (nonatomic, weak) ISGDropDownList *workStatus;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20, 50, 100, 30)];
    [button setTitle:@"更新" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(gengxing) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    NSArray *dataSource = @[@"iOS",@"Java",@"PHP"];
    ISGDropDownList *workStatus = [[ISGDropDownList alloc] initWithFrame:CGRectMake(20, 100, 300, 30)];
    // 设置数据源
    workStatus.listItems = dataSource;
    // 边框颜色
    workStatus.borderColor = [UIColor lightGrayColor];
    // 边框宽度
    workStatus.borderWidth = 1.0f;
    // 设置最大列数
    workStatus.maxRows = dataSource.count;
    // 圆角
    workStatus.cornerRadius = 5;
    // 背景颜色
    workStatus.comBackgroundColor = [UIColor whiteColor];
    // 默认标题
    workStatus.defaultTitle = @"请选择专业：";
    // 标题大小
    workStatus.titleSize = 14;
    // 下拉选中的block
    __weak typeof(self) weakSelf = self;
    workStatus.ClickDropDown = ^(NSInteger index){
        
        NSLog(@"选择了-------------:%@",weakSelf.workStatus.listItems[index]);
    };
    [self.view addSubview:workStatus];
    self.workStatus = workStatus;
}

- (void)gengxing {
    self.workStatus.listItems = @[@"1",@"2",@"4",@"33",@"22",@"11"];
    [self.workStatus reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
