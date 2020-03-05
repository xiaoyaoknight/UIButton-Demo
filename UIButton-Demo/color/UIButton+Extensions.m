//
//  UIButton+Extensions.m
//  UIButton-Demo
//
//  Created by wangzelong on 2020/3/5.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "UIButton+Extensions.h"

@implementation UIButton (Extensions)

- (UIButton *)gradientButtonWithSize:(CGSize)btnSize
                          colorArray:(NSArray *)clrs
                     percentageArray:(NSArray *)percent
                        gradientType:(GradientType)type {
    static UIImage *defaultImage = nil;
    UIImage *backImage = nil;
    if (!percent) {
        percent = @[@(0.18),@(1)];
    }
    if (!clrs) {
        clrs = @[(id)UIColorRGB(0x6B8FFE),(id)UIColorRGB(0x574FF2)];
        if (!defaultImage) {
            defaultImage = [[UIImage alloc] imageWithSize:btnSize gradientColors:clrs percentage:percent gradientType:type];
        }
        backImage = defaultImage;
    } else {
        backImage = [[UIImage alloc] imageWithSize:btnSize gradientColors:clrs percentage:percent gradientType:type];
    }
    [self setBackgroundImage:backImage forState:UIControlStateNormal];
    return self;
}

@end
