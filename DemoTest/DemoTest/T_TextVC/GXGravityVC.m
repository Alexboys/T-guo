//
//  GXGravityVC.m
//  DemoTest
//
//  Created by T-guo on 2019/2/22.
//  Copyright © 2019 T_Guo. All rights reserved.
//

#import "GXGravityVC.h"
#import "GXGravityBackGroundView.h"


@interface GXGravityVC ()

@property (nonatomic, strong) GXGravityBackGroundView  *gravityBackgroundView;
@property (nonatomic, strong) UIImageView              *boxView;

@end

@implementation GXGravityVC

-(GXGravityBackGroundView *)gravityBackgroundView
{
    if (!_gravityBackgroundView) {
        _gravityBackgroundView = [[GXGravityBackGroundView alloc]init];
    }
    return _gravityBackgroundView;
}
-(UIImageView*)boxView
{
    if (!_boxView) {
        _boxView = [[UIImageView alloc]init];
        [_boxView setImage:[UIImage imageNamed:@"gerenzhongxin_mokuaibeijing1"]];
    
    }
    return _boxView;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.title = @"重力感应";
    [self.view addSubview:self.boxView];
    [_boxView addSubview:self.gravityBackgroundView];
    [self layoutIMG];
}

- (void)layoutIMG
{
    [_boxView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
    
    [_gravityBackgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.boxView);
        make.size.mas_equalTo(CGSizeMake(XWLayout(728), XWLayout(711)));
    }];
}

@end
