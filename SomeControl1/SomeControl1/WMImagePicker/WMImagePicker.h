//
//  WMImagePicker.h
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBNavigationController.h"
#import "DBCameraViewController.h"
#import "DBCameraContainerViewController.h"
#import "DBCameraLibraryViewController.h"
@interface WMImagePicker : UIImageView
///是否允许裁剪
@property(nonatomic,readwrite) BOOL allowCrop;
///裁剪比例
@property(nonatomic,readwrite) DBCameraImageScale cropScale;
///裁剪宽度
@property(nonatomic,readwrite) CGFloat cropWidth;
@property(nonatomic,copy) void(^didSelectedImageBlcok)(UIImage *image);
@property(nonatomic,readwrite) BOOL hadSelectedImage;
@end
