//
//  UIView+TKAdd.m
//  TKCategory
//
//  Created by hello on 2020/9/1.
//  Copyright © 2020 TK. All rights reserved.
//

#import "UIView+TKAdd.h"

@implementation UIView (TKAdd)

@end


@implementation UIView (TKFrame)

- (CGFloat)left_tk {
    return self.frame.origin.x;
}

- (void)setLeft_tk:(CGFloat)left_tk {
    CGRect frame = self.frame;
    frame.origin.x = left_tk;
    self.frame = frame;
}

- (CGFloat)right_tk {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight_tk:(CGFloat)right_tk {
    CGRect frame = self.frame;
    frame.origin.x = right_tk - frame.size.width;
    self.frame = frame;
}

- (CGFloat)top_tk {
    return self.frame.origin.y;
}

- (void)setTop_tk:(CGFloat)top_tk {
    CGRect frame = self.frame;
    frame.origin.y = top_tk;
    self.frame = frame;
}

- (CGFloat)bottom_tk {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom_tk:(CGFloat)bottom_tk {
    CGRect frame = self.frame;
    frame.origin.y = bottom_tk - frame.size.height;
    self.frame = frame;
}

- (CGFloat)width_tk {
    return self.frame.size.width;
}

- (void)setWidth_tk:(CGFloat)width_tk {
    CGRect frame = self.frame;
    frame.size.width = width_tk;
    self.frame = frame;
}

- (CGFloat)height_tk {
    return self.frame.size.height;
}

- (void)setHeight_tk:(CGFloat)height_tk {
    CGRect frame = self.frame;
    frame.size.height = height_tk;
    self.frame = frame;
}

- (CGFloat)centerX_tk {
    return self.center.x;
}

- (void)setCenterX_tk:(CGFloat)centerX_tk {
    self.center = CGPointMake(centerX_tk, self.center.y);
}

- (CGFloat)centerY_tk {
    return self.center.y;
}

- (void)setCenterY_tk:(CGFloat)centerY_tk {
    self.center = CGPointMake(self.center.x, centerY_tk);
}

- (CGPoint)origin_tk {
    return self.frame.origin;
}

- (void)setOrigin_tk:(CGPoint)origin_tk {
    CGRect frame = self.frame;
    frame.origin = origin_tk;
    self.frame = frame;
}

- (CGSize)size_tk {
    return self.frame.size;
}

- (void)setSize_tk:(CGSize)size_tk {
    CGRect frame = self.frame;
    frame.size = size_tk;
    self.frame = frame;
}
@end


@implementation UIView (TKDrawCorner)

- (void)setCornerByRoundingCorners:(UIRectCorner)corners cornerRadius:(CGFloat)cornerRadius {
    UIBezierPath *round = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    shapeLayer.path = round.CGPath;
    self.layer.mask = shapeLayer;
}

- (void)setCornerByRoundingCorners:(UIRectCorner)corners cornerRadius:(CGFloat)cornerRadius borderColor:(UIColor*)borderColor {
    UIBezierPath *round = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    shapeLayer.path = round.CGPath;
    shapeLayer.strokeColor = borderColor.CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    [self.layer addSublayer:shapeLayer];
}

@end



@implementation UIView (TKShadow)

- (void)addShadowWithShadowRadius:(CGFloat)shadowRadius
                      shadowColor:(UIColor *)shadowColor
                     shadowOffset:(CGSize)shadowOffset
                    shadowOpacity:(CGFloat)shadowOpacity {
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.bounds];
    
    self.layer.cornerRadius = shadowRadius;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = shadowOffset;
    self.layer.shadowRadius = shadowRadius;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowPath = path.CGPath;
}

@end
