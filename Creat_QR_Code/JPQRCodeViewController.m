//
//  JPQRCodeViewController.m
//  Creat_QR_Code
//
//  Created by YYQ on 14-8-14.
//  Copyright (c) 2014年 YYQ. All rights reserved.
//

#import "JPQRCodeViewController.h"
#import "QRCodeGenerator.h"

@interface JPQRCodeViewController ()

@end

@implementation JPQRCodeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *QRImageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 150, 260, 260)];
    [self.view addSubview:QRImageView];
    NSString *str = @"不支持  arm64 \n targets -> Building Settings -> Architectures -> 去掉 arm64 ";
    UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(0, 64, 320, 80)];
    [title setText:str];
    [title setBackgroundColor:[UIColor lightGrayColor]];
    [title setTextAlignment:NSTextAlignmentCenter];
    [title setNumberOfLines:0];
    [self.view addSubview:title];
    
    QRImageView.image = [QRCodeGenerator qrImageForString:str imageSize:QRImageView.frame.size.width];
    
    [self.view setBackgroundColor:[UIColor grayColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
