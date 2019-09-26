//
//  UILabel+PhotoAndText.m
//  pt_joylabor
//
//  Created by 王鹏 on 2019/9/6.
//  Copyright © 2019 王鹏. All rights reserved.
//

#import "UILabel+PhotoAndText.h"
#import "ImageResizer.h"

@implementation UILabel (PhotoAndText)


-(void)setFrontImg:(NSString *)imgStr
{
    CGSize imgSize = CGSizeMake(self.font.pointSize, self.font.pointSize);
    [self setImg:imgStr imgShowSize:imgSize imgAtFront:YES];
}
-(void)setBackImg:(NSString *)imgStr
{
    CGSize imgSize = CGSizeMake(self.font.pointSize, self.font.pointSize);
    [self setImg:imgStr imgShowSize:imgSize imgAtFront:NO];
}

-(void)setImg:(NSString *)imgStr imgShowSize:(CGSize)imgShowSize imgAtFront:(BOOL)isFront
{
    if (!self.text) {
        self.text = @"";
    }
    NSMutableAttributedString   * arrrStr =[[NSMutableAttributedString alloc] init];
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = [[ImageResizer alloc]resizeImage:[UIImage imageNamed:imgStr] toSize:imgShowSize];
    attachment.bounds = CGRectMake(0, 0, imgShowSize.width, imgShowSize.height);
    NSAttributedString * imgAttr =[NSAttributedString attributedStringWithAttachment:attachment];
    NSAttributedString * textAttr = [[NSMutableAttributedString alloc] initWithString:self.text];
    if (isFront) {
        [arrrStr appendAttributedString:imgAttr];
        [arrrStr appendAttributedString:textAttr];
    }else{
        [arrrStr appendAttributedString:textAttr];
        [arrrStr appendAttributedString:imgAttr];
    }
    self.attributedText = nil;
    self.attributedText = arrrStr;
}

@end
