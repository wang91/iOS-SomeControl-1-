//
//  WMLabel.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WMBorderDraw.h"
//垂直对齐方式
typedef enum {
    WMLabelVerticalTextAlignmentTop = UIControlContentVerticalAlignmentTop,
    WMLabelVerticalTextAlignmentMiddle = UIControlContentVerticalAlignmentCenter,
    WMLabelVerticalTextAlignmentBottom = UIControlContentVerticalAlignmentBottom
} WMLabelVerticalTextAlignment;

@interface WMLabel : UILabel
@property (nonatomic, assign) WMLabelVerticalTextAlignment verticalTextAlignment;
@property (nonatomic, assign) UIEdgeInsets textEdgeInsets;
@property (nonatomic) WMViewBorderWidth borderWidth;
@property (nonatomic, strong) UIColor* borderColor;
@end
