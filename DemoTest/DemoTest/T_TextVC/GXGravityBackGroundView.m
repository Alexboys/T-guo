//
//  GXGravityBackGroundView.m
//  DemoTest
//
//  Created by T-guo on 2019/2/22.
//  Copyright © 2019 T_Guo. All rights reserved.
//

#import "GXGravityBackGroundView.h"
#import <CoreMotion/CoreMotion.h>
#import "SDAutoLayout.h"

@implementation GXGravityBackGroundView

{
    CMMotionManager         *motionManager;
    UIImageView             *imageView;
}
-(CMMotionManager *)motionManager {
    
    if (motionManager == nil) {
        motionManager = [[CMMotionManager alloc] init];
    }
    return motionManager;
}
-(UIImageView *)imageView
{
    if (!imageView) {
        imageView = [[UIImageView alloc]init];
        [imageView setImage:[UIImage imageNamed:@"gerenzhongxin_mokuaixingxing"]];
    }
    return imageView;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.top.bottom.mas_equalTo(self);
        }];
        [self startUpdateAccelerometerResult];
    }
    return self;
}
- (void)startUpdateAccelerometerResult{
    
    if ([self.motionManager isAccelerometerAvailable] == YES) {
        [self.motionManager setAccelerometerUpdateInterval:0.06];
        [self.motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:^(CMAccelerometerData *accelerometerData, NSError *error)
         {
             double x = accelerometerData.acceleration.x;
             double y = accelerometerData.acceleration.y;
             
             if (x>-1&&x<1) {
                 
                 [UIView animateWithDuration:0.1 animations:^{
                     [imageView setCenterX:self.width/2+(XWLayout(80*x))];
                 }];
             }
             if (y>-1&&y<1) {
                 [UIView animateWithDuration:0.1 animations:^{
                     [imageView setCenterY:self.height/2+(XWLayout(80*y))];
                 }];
             }
         }];
    }
}
- (void)stopUpdate
{
    if ([self.motionManager isAccelerometerActive] == YES)
    {
        [self.motionManager stopAccelerometerUpdates];
    }
}
- (void)dealloc
{
    motionManager = nil;
}



@end
