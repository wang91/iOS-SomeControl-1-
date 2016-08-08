//
//  WMButton.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "WMBorderDraw.h"
@interface WMButton : UIButton
@property(nonatomic,strong) id extInfo;
@property(nonatomic) WMViewBorderWidth borderWidth;
@property(nonatomic,strong) UIColor *borderColor;
@end
