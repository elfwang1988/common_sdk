//
//  UILabel+PhotoAndText.h
//  pt_joylabor
//
//  Created by 王鹏 on 2019/9/6.
//  Copyright © 2019 王鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (PhotoAndText)

-(void)setFrontImg:(NSString *)imgStr;
-(void)setBackImg:(NSString *)imgStr;
-(void)setImg:(NSString *)imgStr imgShowSize:(CGSize)imgShowSize imgAtFront:(BOOL)isFront;

@end

NS_ASSUME_NONNULL_END
