//
//  UIView+TKAdd.h
//  TKCategory
//
//  Created by hello on 2020/9/1.
//  Copyright © 2020 TK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (TKAdd)

@end


/// 获取坐标、宽、高等数据的快捷方式
@interface UIView (TKFrame)

@property (nonatomic) CGFloat left_tk;
@property (nonatomic) CGFloat right_tk;

@property (nonatomic) CGFloat top_tk;
@property (nonatomic) CGFloat bottom_tk;

@property (nonatomic) CGFloat width_tk;
@property (nonatomic) CGFloat height_tk;

@property (nonatomic) CGFloat centerX_tk;
@property (nonatomic) CGFloat centerY_tk;

@property (nonatomic) CGPoint origin_tk;
@property (nonatomic) CGSize  size_tk;

@end


/// 绘制圆角
@interface UIView (TKDrawCorner)

/// 设置View任意角度为圆角
/// @param corners 设置的角，左上、左下、右上、右下，可以组合
/// @param cornerRadius 圆角的半径
- (void)setCornerByRoundingCorners:(UIRectCorner)corners cornerRadius:(CGFloat)cornerRadius;

/// 绘制view的圆角边框, 只是在view上画了一个圆角边框，并不会裁剪view
/// @param corners 设置的角，左上、左下、右上、右下，可以组合
/// @param cornerRadius 圆角的半径
/// @param borderColor 边框颜色
- (void)setCornerByRoundingCorners:(UIRectCorner)corners cornerRadius:(CGFloat)cornerRadius borderColor:(UIColor*)borderColor;

@end


/// 添加阴影
@interface UIView (TKShadow)

/// 四周添加阴影
/// @param shadowRadius 阴影的圆角
/// @param shadowColor 阴影颜色
/// @param shadowOffset 阴影偏移量
/// @param shadowOpacity 不透明度
- (void)addShadowWithShadowRadius:(CGFloat)shadowRadius
                      shadowColor:(UIColor *)shadowColor
                     shadowOffset:(CGSize)shadowOffset
                    shadowOpacity:(CGFloat)shadowOpacity;

@end


NS_ASSUME_NONNULL_END
