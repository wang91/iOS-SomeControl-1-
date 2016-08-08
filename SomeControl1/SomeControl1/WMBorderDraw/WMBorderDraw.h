//
//  WMBorderDraw.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


struct WMViewBorderWidth{
    CGFloat top;
    CGFloat right;
    CGFloat bottom;
    CGFloat left;
};
typedef struct WMViewBorderWidth WMViewBorderWidth;

CG_INLINE WMViewBorderWidth
WMViewBorderWidthMake(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right)
{
    WMViewBorderWidth borderWidth;
    borderWidth.top = top;
    borderWidth.right = right;
    borderWidth.bottom = bottom;
    borderWidth.left = left;
    return borderWidth;
}

@interface WMBorderDraw : NSObject
- (void) drawBorder:(CGRect)rect
 andViewBorderWidth:(WMViewBorderWidth)borderWidth
 andViewBorderColor:(UIColor*)borderColor;
@end
