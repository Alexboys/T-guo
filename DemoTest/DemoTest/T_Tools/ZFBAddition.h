
#ifdef __OBJC__

#import "NSMutableArray+ZFBAddition.h"
#import "NSAttributedString+ZFBAdditon.h"
#import "UIColor+ZFBAddition.h"
#import "NSArray+ZFBAddition.h"


#import "UILabel+HMExtention.h"
#import "UIColor+HMExtention.h"
#import "UIButton+HMObjcSugar.h"
#import "ICBaseCommon.h"
#import "UIImage+GXGradientColor.h"
#import <Masonry.h>

#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define XWLayout(px) (1.0f*SCREEN_WIDTH/750*(px))
#define XWLayoutRect(rect) CGRectMake(XWLayout(rect.origin.x), XWLayout(rect.origin.y), XWLayout(rect.size.width), XWLayout(rect.size.height))
#endif


