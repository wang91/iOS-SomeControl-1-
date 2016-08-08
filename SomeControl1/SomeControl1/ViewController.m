//
//  ViewController.m
//  SomeControl1
//
//  Created by mac on 16/8/8.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "ViewController.h"
#import "WMButton.h"
#import "WMLabel.h"
#import "WMImagePicker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)configUI{
   WMLabel * lblName=[[WMLabel alloc]initWithFrame:CGRectMake(10, 40, 100, 40)];
    lblName.text=@"WMLabel";
    [self.view addSubview:lblName];
    lblName.numberOfLines=2;
    lblName.backgroundColor=[UIColor purpleColor];
    lblName.lineBreakMode=NSLineBreakByCharWrapping;
    lblName.textColor=[UIColor redColor];
    lblName.font=[UIFont systemFontOfSize: 15];
    lblName.numberOfLines=2;
    lblName.borderWidth=WMViewBorderWidthMake(0,1,0,1);
    lblName.borderColor=[UIColor blueColor];
    lblName.lineBreakMode=NSLineBreakByCharWrapping;
    //照片
   WMImagePicker * imgSelector=[[WMImagePicker alloc]initWithFrame:CGRectMake(10, 100, 50, 50)];
    imgSelector.backgroundColor=[UIColor greenColor];
    [self.view addSubview:imgSelector];
    WMButton * btnNext=[[WMButton alloc]initWithFrame:CGRectMake(10, 200, 100, 50)];
    [self.view addSubview:btnNext];
    [btnNext setBackgroundColor:[UIColor yellowColor]];
    [btnNext setTitle:@"WMButton"  forState:UIControlStateNormal];
    [btnNext setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnNext addTarget:self action:@selector(btnNext_Click) forControlEvents:UIControlEventTouchUpInside];
    btnNext.borderWidth=WMViewBorderWidthMake(1,0,1,0);
    btnNext.borderColor=[UIColor orangeColor];
    btnNext.layer.cornerRadius=5;
    btnNext.layer.masksToBounds=YES;

}
-(void)btnNext_Click{
    NSLog(@"点击了Button！！");
}
@end
