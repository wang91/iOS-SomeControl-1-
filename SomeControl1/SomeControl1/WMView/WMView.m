//
//  WMView.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "WMView.h"
#import "WMBorderDraw.h"
@implementation WMView
- (id) init
{
    if (self==[super init]){
        self.borderWidth=WMViewBorderWidthMake(0, 0, 0, 0);
        self.borderColor=[UIColor blackColor];
        self.backgroundColor=[UIColor clearColor];
    }
    return self;
}

- (void) drawRect:(CGRect)rect
{
    [super drawRect:rect];
    WMBorderDraw *test=[WMBorderDraw new];
    [test drawBorder:rect andViewBorderWidth:self.borderWidth andViewBorderColor:self.borderColor];
}
@end
