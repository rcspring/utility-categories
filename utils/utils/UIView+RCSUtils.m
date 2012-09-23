//
//  UIView+RCSUtils.m
//  utils
//
//  Created by Ryan Spring on 9/23/12.
//  Copyright (c) 2012 Ryan Spring. All rights reserved.
//

#import "UIView+RCSUtils.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (RCSUtils)

-(void)setShadowWithColor:(UIColor*)color andRadius:(CGFloat)radius withOffset:(CGSize)offset {
    
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowRadius = radius;
    self.layer.shadowOpacity = 0.7f;
    self.layer.shadowOffset = offset;
    self.layer.masksToBounds = NO;
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.bounds];
    self.layer.shadowPath = path.CGPath;
}

-(void)hideShadow {
    self.layer.shadowOpacity = 0.0;
}

-(void)showShadow {
    self.layer.shadowOpacity = 0.7;
}

-(void)setShadowOpacity:(CGFloat)opacity {
    if(opacity < 0) {
        self.layer.shadowOpacity = 0.0;
        return;
    }
    if(opacity > 1.0) {
        self.layer.shadowOpacity = 1.0;
        return;
    }
    
    self.layer.shadowOpacity = opacity;
    
}

@end
