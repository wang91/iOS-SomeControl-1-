//
//  WMLabelWithTitle.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//


#import "Masonry.h"
#import "WMLabelWithTitle.h"
#import "WMLabel.h"
#define Color(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
@interface WMLabelWithTitle ()

@property(nonatomic,strong) WMLabel *labelTitle;
@property(nonatomic,strong) WMLabel *labelContent;

@end

@implementation WMLabelWithTitle
@synthesize labelTitle;
@synthesize labelContent;

- (id) init
{
    self=[super init];
    if (self){
        [self customInit];
    }
    return self;
}

- (id) initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self){
        [self customInit];
    }
    return self;
}

- (void) customInit
{
    self.titleWidth=80;
    self.titleAlignment=NSTextAlignmentRight;
    self.titleColor=Color(100, 20, 20, 1);
    self.titleFont=[UIFont systemFontOfSize:15];
    
    self.contentColor=Color(34, 34, 34, 1);
    self.contentFont=[UIFont systemFontOfSize:15];
    
    labelTitle=[WMLabel new];
    [self addSubview:labelTitle];
    [labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.bottom.equalTo(self);
        make.top.equalTo(self);
        make.width.equalTo(@(self.titleWidth));
    }];
    [labelTitle setFont:self.titleFont];
    [labelTitle setTextColor:self.titleColor];
    [labelTitle setTextAlignment:self.titleAlignment];

    labelContent=[WMLabel new];
    [self addSubview:labelContent];
    [labelContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(labelTitle.mas_right);
        make.bottom.equalTo(self);
        make.top.equalTo(self);
        make.right.equalTo(self).offset(-10);
    }];
    [labelContent setTextColor:self.contentColor];
    [labelContent setFont:self.contentFont];
    [labelContent setTextAlignment:NSTextAlignmentLeft];
}

- (void) setTitleWidth:(CGFloat)titleWidth
{
    _titleWidth=titleWidth;
    [self.labelTitle mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(titleWidth));
    }];
}

- (void) setTitleAlignment:(NSTextAlignment)titleAlignment
{
    _titleAlignment=titleAlignment;
    [self.labelTitle setTextAlignment:titleAlignment];
    [self.labelTitle setTextEdgeInsets:UIEdgeInsetsMake(0, 10, 0, 0)];
}

- (void) setTitle:(NSString *)title
{
    _title=title;
    self.labelTitle.text=title;
}

- (void) setTitleColor:(UIColor *)titleColor
{
    _titleColor=titleColor;
    self.labelTitle.textColor=titleColor;
}

- (void) setTitleFont:(UIFont *)titleFont
{
    _titleFont=titleFont;
    [self.labelTitle setFont:titleFont];
}

- (void) setContent:(NSString *)content
{
    _content=content;
    self.labelContent.text=content;
}

- (void) setContentColor:(UIColor *)contentColor
{
    _contentColor=contentColor;
    self.labelContent.textColor=contentColor;
}

- (void) setContentFont:(UIFont *)contentFont
{
    _contentFont=contentFont;
    [self.labelContent setFont:contentFont];
}
- (void) setContentAlignment:(NSTextAlignment)contentAlignment
{
    _contentAlignment=contentAlignment;
    [labelContent setTextAlignment:contentAlignment];
}
@end
