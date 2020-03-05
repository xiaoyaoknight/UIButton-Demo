//
//  UIImage+Util.h
//  UIButton-Demo
//
//  Created by wangzelong on 2020/3/5.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, GradientType) {
    GradientFromTopToBottom = 1,            //从上到下
    GradientFromLeftToRight,                //从做到右
    GradientFromLeftTopToRightBottom,       //从上到下
    GradientFromLeftBottomToRightTop        //从上到下
};

@interface UIImage (Util)

/**
 *  根据给定的颜色，生成渐变色的图片
 *  @param imageSize        要生成的图片的大小
 *  @param colors         渐变颜色的数组
 *  @param percents          渐变颜色的占比数组
 *  @param gradientType     渐变色的类型
 */
- (UIImage *)imageWithSize:(CGSize)imageSize
            gradientColors:(NSArray *)colors
                percentage:(NSArray *)percents
              gradientType:(GradientType)gradientType;
@end

NS_ASSUME_NONNULL_END
