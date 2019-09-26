//
//  UILabel+BaseLines.m
//  pt_joylabor
//
//  Created by 王鹏 on 2019/8/30.
//  Copyright © 2019 王鹏. All rights reserved.
//

#import "UILabel+BaseLines.h"

@implementation UILabel (BaseLines)
-(void)setCenterLine
{
    NSAttributedString *attributedString = [[NSAttributedString alloc]
                                            initWithString:self.text attributes:@{
                                                                                   NSStrikethroughStyleAttributeName : @(NSUnderlinePatternSolid | NSUnderlineStyleSingle),
                                                                                   NSBaselineOffsetAttributeName:@(0)}];
    self.attributedText = attributedString;
}

- (void)setBottomLine
{
    NSAttributedString *attributedString = [[NSAttributedString alloc]
                                            initWithString:self.text attributes:@{
                                                                                  NSUnderlineStyleAttributeName : @(NSUnderlinePatternSolid | NSUnderlineStyleSingle),
                                                                                  NSBaselineOffsetAttributeName:@(0)}];
    self.attributedText = attributedString;
}

-(void)setLineSpacing:(CGFloat)lineSpacing
{
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    paragraphStyle.lineSpacing = lineSpacing;
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
    self.attributedText = [[NSAttributedString alloc] initWithString:self.text attributes:attributes];
}
@end

