//
//  WMBorderDraw.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "WMBorderDraw.h"

@implementation WMBorderDraw

- (void) drawBorder:(CGRect)rect
 andViewBorderWidth:(WMViewBorderWidth)borderWidth
 andViewBorderColor:(UIColor*)borderColor;
{

    CGFloat viewWidth = rect.size.width;
    CGFloat viewHeight = rect.size.height;

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextSetStrokeColorWithColor(context, borderColor.CGColor);

    if (borderWidth.top > 0) {
        CGContextSetLineWidth(context, borderWidth.top);
        CGContextMoveToPoint(context, 0, 0);
        CGContextAddLineToPoint(context, viewWidth, 0);
        CGContextStrokePath(context);
    }
    if (borderWidth.bottom > 0) {
        CGContextSetLineWidth(context, borderWidth.bottom);
        CGContextMoveToPoint(context, 0, viewHeight);
        CGContextAddLineToPoint(context, viewWidth, viewHeight);
        CGContextStrokePath(context);
    }
    if (borderWidth.left > 0) {
        CGContextSetLineWidth(context, borderWidth.left);
        CGContextMoveToPoint(context, 0, 0);
        CGContextAddLineToPoint(context, 0, viewHeight);
        CGContextStrokePath(context);
    }
    if (borderWidth.right > 0) {
        CGContextSetLineWidth(context, borderWidth.right);
        CGContextMoveToPoint(context, viewWidth, 0);
        CGContextAddLineToPoint(context, viewWidth, viewHeight);
        CGContextStrokePath(context);
    }
}

@end
