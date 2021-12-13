//
//  TKUnicode.m
//  TKCategory
//
//  Created by hello on 2020/9/2.
//  Copyright © 2020 TK. All rights reserved.
//

#import "TKUnicode.h"
#import "NSObject+TKAdd.h"

#import <objc/runtime.h>

#ifdef DEBUG

@implementation NSString (ZXPUnicode)

- (NSString *)stringByReplaceUnicode {
    NSMutableString *convertedString = [self mutableCopy];
    [convertedString replaceOccurrencesOfString:@"\\U"
                                     withString:@"\\u"
                                        options:0
                                          range:NSMakeRange(0, convertedString.length)];
    
    CFStringRef transform = CFSTR("Any-Hex/Java");
    CFStringTransform((__bridge CFMutableStringRef)convertedString, NULL, transform, YES);
    return convertedString;
}

@end

@implementation NSArray (ZXPUnicode)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        tk_swizzleSelector(class, @selector(description), @selector(tk_description));
        tk_swizzleSelector(class, @selector(descriptionWithLocale:), @selector(tk_descriptionWithLocale:));
        tk_swizzleSelector(class, @selector(descriptionWithLocale:indent:), @selector(tk_descriptionWithLocale:indent:));
    });
}

- (NSString *)tk_description {
    return [[self tk_description] stringByReplaceUnicode];
}

- (NSString *)tk_descriptionWithLocale:(nullable id)locale {
    return [[self tk_descriptionWithLocale:locale] stringByReplaceUnicode];
}

- (NSString *)tk_descriptionWithLocale:(nullable id)locale indent:(NSUInteger)level {
    return [[self tk_descriptionWithLocale:locale indent:level] stringByReplaceUnicode];
}

@end

@implementation NSDictionary (ZXPUnicode)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        tk_swizzleSelector(class, @selector(description), @selector(tk_description));
        tk_swizzleSelector(class, @selector(descriptionWithLocale:), @selector(tk_descriptionWithLocale:));
        tk_swizzleSelector(class, @selector(descriptionWithLocale:indent:), @selector(tk_descriptionWithLocale:indent:));
    });
}

- (NSString *)tk_description {
    return [[self tk_description] stringByReplaceUnicode];
}

- (NSString *)tk_descriptionWithLocale:(nullable id)locale {
    return [[self tk_descriptionWithLocale:locale] stringByReplaceUnicode];
}

- (NSString *)tk_descriptionWithLocale:(nullable id)locale indent:(NSUInteger)level {
    return [[self tk_descriptionWithLocale:locale indent:level] stringByReplaceUnicode];
}

@end

@implementation NSSet (ZXPUnicode)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        tk_swizzleSelector(class, @selector(description), @selector(tk_description));
        tk_swizzleSelector(class, @selector(descriptionWithLocale:), @selector(tk_descriptionWithLocale:));
        tk_swizzleSelector(class, @selector(descriptionWithLocale:indent:), @selector(tk_descriptionWithLocale:indent:));
    });
}

- (NSString *)tk_description {
    return [[self tk_description] stringByReplaceUnicode];
}

- (NSString *)tk_descriptionWithLocale:(nullable id)locale {
    return [[self tk_descriptionWithLocale:locale] stringByReplaceUnicode];
}

- (NSString *)tk_descriptionWithLocale:(nullable id)locale indent:(NSUInteger)level {
    return [[self tk_descriptionWithLocale:locale indent:level] stringByReplaceUnicode];
}
@end


#endif
