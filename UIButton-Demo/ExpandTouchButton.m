//
//  ExpandTouchButton.m
//  UIButton-Demo
//
//  Created by wangzelong on 2020/3/5.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "ExpandTouchButton.h"

@implementation ExpandTouchButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    
    return CGRectContainsPoint(self.realTouchBouns, point);
}

- (CGRect)realTouchBouns {
    
    return CGRectMake(_expandEdgeInsets.left,
                      _expandEdgeInsets.top,
                      self.frame.size.width - _expandEdgeInsets.left - _expandEdgeInsets.right,
                      self.frame.size.height - _expandEdgeInsets.top - _expandEdgeInsets.bottom);
}

- (BOOL)isExclusiveTouch {
    return YES;
}

@end
