//
//  ColorButton.h
//  UIButton-Demo
//
//  Created by wangzelong on 2020/3/5.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIButton+Extensions.h"
#import "Helper.h"

NS_ASSUME_NONNULL_BEGIN

@interface ColorButton : UIButton

/**
 初始化 button (生成渐变色图片填充button背景图片)
 */
+ (instancetype)buttonWithFrame:(CGRect)frame layerColors:(NSArray *)layerColors;

@end

NS_ASSUME_NONNULL_END
