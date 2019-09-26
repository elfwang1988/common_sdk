//
//  UIView+Corners.h
//  pt_joylabor
//
//  Created by 王鹏 on 2019/8/29.
//  Copyright © 2019 王鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Corners)
-(void)setNewCorners:(CGFloat)corners;
-(void)setNewCorners:(CGFloat)cornersSize byRoundingCorners:(UIRectCorner)corners;
-(void)removeNewCorners;
-(void)setShadowWithCornerRadius:(CGFloat ) cornerRadius shadowColor:(UIColor *)shadowColor;
@end

NS_ASSUME_NONNULL_END
