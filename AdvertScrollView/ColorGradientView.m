//
//  ColorGradientView.m
//  AdvertScrollView
//
//  Created by 宇玄丶 on 2017/3/29.
//  Copyright © 2017年 北京116工作室. All rights reserved.
//

#import "ColorGradientView.h"

@implementation ColorGradientView

+ (instancetype)createWithColor:(UIColor *)color frame:(CGRect)frame direction:(GradientDirection)direction {
    return [[self alloc] initWithColorArray:@[color] frame:frame direction:direction];
}

+ (instancetype)createWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor frame:(CGRect)frame direction:(GradientDirection)direction {
    return [[self alloc] initWithColorArray:@[fromColor,toColor] frame:frame direction:direction];
}

+ (instancetype)createWithColorArray:(NSArray *)colorArray frame:(CGRect)frame direction:(GradientDirection)direction {
    return [[self alloc] initWithColorArray:colorArray frame:frame direction:direction];
}

- (instancetype)initWithColorArray:(NSArray *)colorArray frame:(CGRect)frame direction:(GradientDirection)direction {
    if (self = [super initWithFrame:frame]) {
        ColorGradientView *gradientView = [[ColorGradientView alloc] initWithFrame:frame];
        self = gradientView;
        CAGradientLayer *la = [[CAGradientLayer alloc]init];
        la.frame = gradientView.bounds;
        [gradientView.layer addSublayer:la];
        NSMutableArray *marray = [NSMutableArray array];
        for (UIColor *color in colorArray) {
            [marray addObject:(__bridge id)color.CGColor];
        }
        la.colors = marray;
        
        switch (direction) {
            case 1:
                la.startPoint = CGPointMake(0.5, 1);
                la.endPoint = CGPointMake(0.5, 0);
                break;
            case 2:
                la.startPoint = CGPointMake(1, 0.5);
                la.endPoint = CGPointMake(0, 0.5);
                break;
            case 3:
                la.startPoint = CGPointMake(0.5, 0);
                la.endPoint = CGPointMake(0.5, 1);
                break;
            case 4:
                la.startPoint = CGPointMake(0, 0.5);
                la.endPoint = CGPointMake(1, 0.5);
                break;
                
            default:
                break;
        }
    }
    return self;
}
@end
