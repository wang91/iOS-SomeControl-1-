//
//  WMLabelWithTitle.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WMView.h"

@interface WMLabelWithTitle : WMView

@property (nonatomic, readwrite) CGFloat titleWidth;
@property (nonatomic, readwrite) NSTextAlignment titleAlignment;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, strong) UIColor* titleColor;
@property (nonatomic, strong) UIFont* titleFont;
@property (nonatomic, copy) NSString* content;
@property (nonatomic, strong) UIColor* contentColor;
@property (nonatomic, strong) UIFont* contentFont;
@property(nonatomic,readwrite) NSTextAlignment contentAlignment;

@end
