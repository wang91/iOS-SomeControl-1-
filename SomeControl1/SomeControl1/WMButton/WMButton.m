//
//  WMButton.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//


#import "WMButton.h"

@implementation WMButton

- (id) init
{
    if (self=[super init]){
        [self initialize];
    }
    return self;
}

- (id) initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]){
        [self initialize];
    }
    return self;
}

- (void) initialize
{
    self.borderWidth=WMViewBorderWidthMake(0, 0, 0, 0);
    self.borderColor=[UIColor blackColor];
    self.backgroundColor=[UIColor clearColor];
}

- (void) drawRect:(CGRect)rect
{
    [super drawRect:rect];
    WMBorderDraw *draw=[WMBorderDraw new];
    [draw drawBorder:rect andViewBorderWidth:self.borderWidth andViewBorderColor:self.borderColor];
}

@end
