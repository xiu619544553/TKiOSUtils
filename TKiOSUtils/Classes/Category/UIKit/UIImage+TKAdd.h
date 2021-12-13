//
//  UIImage+TKAdd.h
//  TKCategory
//
//  Created by hello on 2021/1/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (TKAdd)
- (UIImage *)tk_imageMaskedWithColor:(UIColor *)maskColor;
@end

NS_ASSUME_NONNULL_END
