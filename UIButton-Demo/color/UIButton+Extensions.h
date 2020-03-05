//
//  UIButton+Extensions.h
//  UIButton-Demo
//
//  Created by wangzelong on 2020/3/5.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImage+Util.h"
#import "Helper.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Extensions)

/**
 *  根据给定的颜色，设置按钮的颜色
 *  @param btnSize  这里要求手动设置下生成图片的大小，防止coder使用第三方layout,没有设置大小
 *  @param clrs     渐变颜色的数组
 *  @param percent  渐变颜色的占比数组
 *  @param type     渐变色的类型
 */
- (UIButton *)gradientButtonWithSize:(CGSize)btnSize
                          colorArray:(nullable NSArray *)clrs
                     percentageArray:(nullable NSArray *)percent
                        gradientType:(GradientType)type;

@end

NS_ASSUME_NONNULL_END
