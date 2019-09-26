//
//  UIView+Corners.m
//  pt_joylabor
//
//  Created by 王鹏 on 2019/8/29.
//  Copyright © 2019 王鹏. All rights reserved.
//

#import "UIView+Corners.h"

@implementation UIView (Corners)
-(void)setNewCorners:(CGFloat)cornersSize
{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(cornersSize, cornersSize)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = self.bounds;
    
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    
    self.layer.mask = maskLayer;
}
-(void)setNewCorners:(CGFloat)cornersSize byRoundingCorners:(UIRectCorner)corners
{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(cornersSize, cornersSize)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = self.bounds;
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
    
}
-(void)removeNewCorners
{
    self.layer.mask = nil;
}

-(void)setShadowWithCornerRadius:(CGFloat ) cornerRadius shadowColor:(UIColor *)shadowColor
{
    self.layer.cornerRadius = cornerRadius;
//    self.layer.masksToBounds = NO;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = CGSizeZero;
    self.layer.shadowRadius = 2;
    self.layer.shadowOpacity =0.8;
}

@end

