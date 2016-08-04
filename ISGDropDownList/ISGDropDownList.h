//
//  ISGDropDownList.h
//  test1
//
//  Created by isaac on 16/7/26.
//  Copyright © 2016年 ultrapower. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface ISGDropDownList : UIView

//可在IB中属性调整
/*! @brief 圆角 */
@property (nonatomic) IBInspectable CGFloat cornerRadius;
/*! @brief 边线宽度 */
@property (nonatomic) IBInspectable CGFloat borderWidth;
/*! @brief 边线颜色 */
@property (nonatomic) IBInspectable UIColor *borderColor;
/*! @brief 箭头图片 */
@property (nonatomic) IBInspectable UIImage *arrowImage;
/*! @brief 文字颜色 */
@property (nonatomic) IBInspectable UIColor *textColor;
/*! @brief 测试颜色 */
@property (nonatomic) IBInspectable NSString *testString;
/*! @brief 最大行数 */
@property (nonatomic)  NSInteger maxRows;
/*! @brief 下拉数据源 */
@property (strong, nonatomic) NSArray *listItems;
/*! @brief  默认标题 */
@property (nonatomic, strong) NSString *defaultTitle;
/*! @brief  背景颜色 */
@property (nonatomic, strong) UIColor *comBackgroundColor;
/*! @brief  标题大小 */
@property (nonatomic, assign) NSInteger titleSize;
/*! @brief 下拉时选择的事件 */
@property (nonatomic, copy) void (^ClickDropDown)(NSInteger index);
/*! @brief  当前选项值 */
@property (nonatomic, copy, readonly) NSString *value;


- (void)reloadData;
/**
 *  关闭下拉菜单
 */
- (void)closeMenu;
@end
