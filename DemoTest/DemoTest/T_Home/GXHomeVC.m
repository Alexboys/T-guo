//
//  GXHomeVC.m
//  DemoTest
//
//  Created by T-guo on 2019/2/22.
//  Copyright © 2019 T_Guo. All rights reserved.
//

#import "GXHomeVC.h"
#import "UIImage+Colors.h"
#import "GXGravityVC.h"
@interface GXHomeVC ()

@property (nonatomic, strong) UIButton      *confirmButton;

@end

@implementation GXHomeVC


-(UIButton *)confirmButton
{
    if (!_confirmButton) {
        _confirmButton = [[UIButton alloc]init];
        [_confirmButton setTitle:@"渐变色按钮" forState:UIControlStateNormal];
        UIImage *image = [UIImage creatImageWithSize:CGSizeMake(XWLayout(242), XWLayout(98)) fromColors:UIColorFromRGB(0xFFA05E) toColor:UIColorFromRGB(0xFF745E) ByGradientType:UIImageColorGradientTypeLeftToRight];
        [_confirmButton setBackgroundImage:image forState:UIControlStateNormal];
        [_confirmButton setTitleColor:WHITECOLOR forState:UIControlStateNormal];
        [_confirmButton.titleLabel setFont:UIFontSize(XWLayout(36))];
        [_confirmButton addTarget:self action:@selector(confirmButtonAction) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _confirmButton;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.view setBackgroundColor:WHITECOLOR];
    self.title = @"Demao";
    [self creatUI];
}

#pragma mark
#pragma mark - 初始化界面
- (void)creatUI{
    
    [self.view addSubview:self.confirmButton];
    
    [self.confirmButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.mas_equalTo(XWLayout(88));
        make.width.mas_equalTo(XWLayout(300));
    }];
}

- (void)confirmButtonAction
{
    GXGravityVC *GravityVC = [[GXGravityVC alloc]init];
    [self.navigationController pushViewController:GravityVC animated:YES];
}

@end
