//
//  UILabel+BaseLines.h
//  pt_joylabor
//
//  Created by 王鹏 on 2019/8/30.
//  Copyright © 2019 王鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (BaseLines)


/// 设置中间线
-(void)setCenterLine;

/// 设置底部线
-(void)setBottomLine;

/// 设置行间距
/// @param lineSpacing 行间距
-(void)setLineSpacing:(CGFloat)lineSpacing;

@end

NS_ASSUME_NONNULL_END
