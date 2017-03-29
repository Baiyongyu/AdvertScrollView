//
//  ColorGradientView.h
//  AdvertScrollView
//
//  Created by 宇玄丶 on 2017/3/29.
//  Copyright © 2017年 北京116工作室. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, GradientDirection) {
    GradientToTop    = 1,
    GradientToLeft   = 2,
    GradientToBottom = 3,
    GradientToRight  = 4,
};

@interface ColorGradientView : UIView

/**
 *  use one color to init the gradientView,default is this color to clear.
 *
 *  @param visible   can you see other view what below the gradientView
 *  @param direction  the direction we want gradient to clear
 *
 *  @return
 */
+ (instancetype)createWithColor:(UIColor *)color frame:(CGRect)frame direction:(GradientDirection)direction;

/**
 *  use two color to init the gradientView, from fromColor gradient to toColor
 *
 *  @param direction the direction we want gradient to toColor
 *
 *  @return 
 */
+ (instancetype)createWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor frame:(CGRect)frame direction:(GradientDirection)direction;

/**
 *  use a colorArray to generate a wonderful gradientView.
 *
 *  @param colorArray array with UIColor
 *
 *  @return
 */
+ (instancetype)createWithColorArray:(NSArray *)colorArray frame:(CGRect)frame direction:(GradientDirection)direction;

@end
