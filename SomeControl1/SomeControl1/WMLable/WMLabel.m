//
//  WMLabel.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "WMLabel.h"

@implementation WMLabel
@synthesize verticalTextAlignment = _verticalTextAlignment;

- (void)setVerticalTextAlignment:(WMLabelVerticalTextAlignment)verticalTextAlignment {
    _verticalTextAlignment = verticalTextAlignment;
    
    [self setNeedsLayout];
}

@synthesize textEdgeInsets = _textEdgeInsets;

- (void)setTextEdgeInsets:(UIEdgeInsets)textEdgeInsets {
    _textEdgeInsets = textEdgeInsets;
    
    [self setNeedsLayout];
}


#pragma mark - UIView

- (id) init
{
    if (self=[super init]){
        [self initialize];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self initialize];
    }
    return self;
}


- (id)initWithFrame:(CGRect)aFrame {
    if ((self = [super initWithFrame:aFrame])) {
        [self initialize];
    }
    return self;
}


#pragma mark - UILabel

- (void)drawTextInRect:(CGRect)rect {
    rect = UIEdgeInsetsInsetRect(rect, self.textEdgeInsets);
    
    if (self.verticalTextAlignment == WMLabelVerticalTextAlignmentTop) {
        CGSize sizeThatFits = [self sizeThatFits:rect.size];
        rect = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, sizeThatFits.height);
    } else if (self.verticalTextAlignment == WMLabelVerticalTextAlignmentBottom) {
        CGSize sizeThatFits = [self sizeThatFits:rect.size];
        rect = CGRectMake(rect.origin.x, rect.origin.y + (rect.size.height - sizeThatFits.height), rect.size.width, sizeThatFits.height);
    }
    
    [super drawTextInRect:rect];
    WMBorderDraw *draw=[WMBorderDraw new];
    [draw drawBorder:rect andViewBorderWidth:self.borderWidth andViewBorderColor:self.borderColor];

}

//- (void) drawRect:(CGRect)rect
//{
//    [super drawRect:rect];
//    HBorderDraw *draw=[HBorderDraw new];
//    [draw drawBorder:rect andViewBorderWidth:self.borderWidth andViewBorderColor:self.borderColor];
//
//}


#pragma mark - Private

- (void)initialize {
    self.verticalTextAlignment = WMLabelVerticalTextAlignmentMiddle;
    self.textEdgeInsets = UIEdgeInsetsZero;
    self.borderWidth = WMViewBorderWidthMake(0, 0, 0, 0);
    self.borderColor = [UIColor blackColor];
    self.backgroundColor = [UIColor clearColor];
}

@end
