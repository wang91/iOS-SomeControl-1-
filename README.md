# iOS-SomeControl-1-
#项目中封装的一些控件
1.自定义的Button和Label以及View，可设置边框的width
2.自定义图片选择器
#使用
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


