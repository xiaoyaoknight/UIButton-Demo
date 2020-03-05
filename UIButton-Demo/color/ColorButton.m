//
//  ColorButton.m
//  UIButton-Demo
//
//  Created by wangzelong on 2020/3/5.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "ColorButton.h"

@implementation ColorButton

+ (instancetype)buttonWithFrame:(CGRect)frame layerColors:(NSArray *)layerColors {
    ColorButton *button = [self buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor clearColor];
    button.frame = frame;
    button.titleLabel.font = [UIFont systemFontOfSize:30];
    button.titleLabel.textColor = [UIColor whiteColor];
    button.layer.cornerRadius = 20;
    button.layer.masksToBounds = YES;
    // 设置渐变色
    NSArray *defaultPercentArray = @[@(0.18),@(1)];
    if (!layerColors) {
        layerColors = @[(id)UIColorRGB(0x6B8FFE),(id)UIColorRGB(0x574FF2)];
    }
    [button gradientButtonWithSize:CGSizeMake(button.frame.size.width, button.frame.size.height)
                        colorArray:layerColors
                   percentageArray:defaultPercentArray
                      gradientType:GradientFromLeftBottomToRightTop];
    return button;
}

@end
