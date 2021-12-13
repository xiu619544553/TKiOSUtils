//
//  TKInputView.h
//  dailyCode
//
//  Created by hello on 2021/12/10.
//  Copyright © 2021 TK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,InputViewStyle) {
    InputViewStyleDefault,
    InputViewStyleLarge,
};

@class TKInputView;
@protocol TKInputViewDelagete <NSObject>
@optional

/**
//如果你工程中有配置IQKeyboardManager,并对TKInputView造成影响,
 请在TKInputView将要显示代理方法里 将IQKeyboardManager的enableAutoToolbar及enable属性 关闭
 请在TKInputView将要消失代理方法里 将IQKeyboardManager的enableAutoToolbar及enable属性 打开
 如下:
 
//TKInputView 将要显示
- (void)TKInputViewWillShow:(TKInputView *)inputView{
 [IQKeyboardManager sharedManager].enableAutoToolbar = NO;
 [IQKeyboardManager sharedManager].enable = NO;
}

//TKInputView 将要影藏
- (void)TKInputViewWillHide:(TKInputView *)inputView{
     [IQKeyboardManager sharedManager].enableAutoToolbar = YES;
     [IQKeyboardManager sharedManager].enable = YES;
}
*/

/// TKInputView 将要显示
/// @param inputView inputView实例
- (void)TKInputViewWillShow:(TKInputView *)inputView;

/// TKInputView 将要影藏
/// @param inputView inputView实例
- (void)TKInputViewWillHide:(TKInputView *)inputView;

@end

@interface TKInputView : UIView

@property (nonatomic, assign) id<TKInputViewDelagete> delegate;

/// 最大输入字数
@property (nonatomic, assign) NSInteger maxCount;

/// 字体
@property (nonatomic, strong) UIFont * font;

/// 占位符
@property (nonatomic, copy) NSString *placeholder;

/// 占位符颜色
@property (nonatomic, strong) UIColor *placeholderColor;

/// 输入框背景颜色
@property (nonatomic, strong) UIColor* textViewBackgroundColor;

/// 发送按钮背景色
@property (nonatomic, strong) UIColor *sendButtonBackgroundColor;

/// 发送按钮Title
@property (nonatomic, copy) NSString *sendButtonTitle;

/// 发送按钮圆角大小
@property (nonatomic, assign) CGFloat sendButtonCornerRadius;

/// 发送按钮字体
@property (nonatomic, strong) UIFont * sendButtonFont;


/// 显示输入框
/// @param style 样式
/// @param configurationBlock 请在此block中设置TKInputView属性
/// @param sendBlock 发送按钮点击回调
+ (void)showWithStyle:(InputViewStyle)style
   configurationBlock:(void(^)(TKInputView *inputView))configurationBlock
            sendBlock:(BOOL(^)(NSString *text))sendBlock;

@end

NS_ASSUME_NONNULL_END
