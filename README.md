# ISGDropDownList

![image](http://oodl5p9nn.bkt.clouddn.com/ISGDropDownList.gif)

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
    workStatus.ClickDropDown = ^(NSInteger index){
        
        
        NSLog(@"选择了-------------:%@",dataSource[index]);
    };
    [self.view addSubview:workStatus];
