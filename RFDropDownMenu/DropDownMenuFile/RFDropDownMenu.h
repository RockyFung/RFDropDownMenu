//
//  RFDropDownMenu.h
//  RFDropDownMenu
//
//  Created by 冯剑 on 2017/10/31.
//  Copyright © 2017年 冯剑. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RFDropDownMenu : UIView
@property (nonatomic, assign) CGFloat rowHeight;

@property (nonatomic, strong) NSArray * datas;

@property (nonatomic, strong) UIColor *textColor;

@property (nonatomic, strong) UIColor *indicatorColor;

@property (nonatomic, strong) UIFont * font;
//选中后自动收起
@property (nonatomic, assign) BOOL autoCloseWhenSelected;

//选中回调
@property (nonatomic, copy) void(^cellClickedBlock)(NSString *title,NSInteger index);


- (void)closeMenu;
@end
