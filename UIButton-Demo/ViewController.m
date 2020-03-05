//
//  ViewController.m
//  UIButton-Demo
//
//  Created by wangzelong on 2020/3/4.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Extensions.h"
#import "ColorButton.h"
#import "ExpandTouchButton.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self test3];
}

/**
 *  调整按钮图片、文字位置
 */
- (void)test {
     UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(40, 100, 200, 70);
        // button.center = self.view.center;
        [button setImage:[UIImage imageNamed:@"order_waiting_pay"] forState:UIControlStateNormal];
        [button setTitle:@"我是按钮1" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor grayColor];
        [self.view addSubview:button];
        
        // 水平方向
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeading;
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentTrailing;
        
        // 垂直方向
    //    button.contentVerticalAlignment =  UIControlContentVerticalAlignmentCenter;
    //    button.contentVerticalAlignment =  UIControlContentVerticalAlignmentTop;
    //    button.contentVerticalAlignment =  UIControlContentVerticalAlignmentBottom;
    //    button.contentVerticalAlignment =  UIControlContentVerticalAlignmentFill;
        
        // 左文字 右图片
    //    UIImage *image = button.imageView.image;
    //    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, -image.size.width, 0, image.size.width)];
    //    [button setImageEdgeInsets:UIEdgeInsetsMake(0, button.titleLabel.bounds.size.width, 0, -button.titleLabel.bounds.size.width)];
        
        //可以设置图片和文字之间的间距：
    //    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, -image.size.width - 10, 0, image.size.width)];
    //    [button setImageEdgeInsets:UIEdgeInsetsMake(0, button.titleLabel.bounds.size.width + 10, 0, -button.titleLabel.bounds.size.width)];
        
        // 上图片 下文字
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //    [button setTitleEdgeInsets:UIEdgeInsetsMake(button.imageView.frame.size.height ,-button.imageView.frame.size.width, 0.0,0.0)];
    //    [button setImageEdgeInsets:UIEdgeInsetsMake(-button.imageView.frame.size.height, 0.0,0.0, -button.titleLabel.bounds.size.width)];
        
        // 上文字 下图片
    //    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    //    [button setTitleEdgeInsets:UIEdgeInsetsMake(-button.imageView.frame.size.height ,-button.imageView.frame.size.width, 0.0,0.0)];
    //    [button setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0,-button.imageView.frame.size.height, -button.titleLabel.bounds.size.width)];
}


/**
 *  按钮渐变色
 */
- (void)test2 {
    ColorButton *button = [ColorButton buttonWithFrame:CGRectMake(100, 100, 200, 100) layerColors:nil];
    [button setTitle:@"我是按钮1" forState:UIControlStateNormal];
    [self.view addSubview:button];
}

/**
 *  扩大按钮点击区域
 */
- (void)test3 {
    
    ExpandTouchButton *button = [ExpandTouchButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 200, 70);
    // button.center = self.view.center;
    [button setImage:[UIImage imageNamed:@"order_waiting_pay"] forState:UIControlStateNormal];
    [button setTitle:@"我是扩大点击范围按钮" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor grayColor];
    button.expandEdgeInsets = UIEdgeInsetsMake(-50, -50, -50, -50);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(logtest) forControlEvents:UIControlEventTouchUpInside];
}

- (void)logtest {
    NSLog(@"按钮被点击了-----------");
}
@end
