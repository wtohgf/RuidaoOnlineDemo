//
//  NEULogonViewController.m
//  RuidaoOnlineDemo
//
//  Created by hegf on 15/6/9.
//  Copyright (c) 2015年 hegf. All rights reserved.
//

#import "NEULogonViewController.h"
#import <UIImageView+AFNetworking.h>
#import "NEUMainPageViewController.h"

@interface NEULogonViewController ()
@property (weak, nonatomic) IBOutlet UITextField *imageCode;
@property (strong, nonatomic) IBOutlet UIImageView *background;
@property (weak, nonatomic) IBOutlet UIButton *logonButton;
- (IBAction)Logon:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *cofirmImage;

@end

@implementation NEULogonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    [self changeComfirImage:nil];
    
    _cofirmImage.userInteractionEnabled = YES;
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changeComfirImage:)];
    [_cofirmImage addGestureRecognizer:tap];
    
    _logonButton.layer.cornerRadius = 14.f;
    
    [_background setImage:[UIImage imageNamed:@"logonbackground"]];
}

- (void)changeComfirImage:(UITapGestureRecognizer*)recongnizer{
    [_cofirmImage setImageWithURL:nil];
    NSURL* url = [NSURL URLWithString:NEUAPI_ConfirmImageUpdate];
    [_cofirmImage setImageWithURL:url];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Logon:(UIButton *)sender {

    NSString* username = @"15074714@qq.com";
    NSString* password = @"123456";

    [UIApplication sharedApplication].keyWindow.rootViewController = [[NEUMainPageViewController alloc]init];
    
    if (_imageCode.text.length == 0) {
        NEULog(@"请输入验证码");
        return;
    }
    
    [[NEUWebRequestTool sharedWebRequestTool] Neu_logonWithName:username Password:password ImageCode:_imageCode.text];
    
    
}
@end
