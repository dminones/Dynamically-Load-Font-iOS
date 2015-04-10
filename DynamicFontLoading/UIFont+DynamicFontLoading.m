//
//  UIFont+DynamicFontLoading.m
//  DynamicFontLoading
//
//  Created by Dario on 4/10/15.
//  Copyright (c) 2015 Cactus. All rights reserved.
//

#import "UIFont+DynamicFontLoading.h"
#import <CoreGraphics/CoreGraphics.h>
#import <CoreText/CoreText.h>

@implementation UIFont(UIFont_DynamicFontLoading)

+ (void) registerDynamicallyFontWithFileURL:(NSString*)file
{
    NSData *inData = [NSData dataWithContentsOfFile:file];
    CFErrorRef error;
    CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)inData);
    CGFontRef font = CGFontCreateWithDataProvider(provider);
    if (! CTFontManagerRegisterGraphicsFont(font, &error)) {
        CFStringRef errorDescription = CFErrorCopyDescription(error);
        NSLog(@"Failed to load font: %@", errorDescription);
        CFRelease(errorDescription);
    }
    CFRelease(font);
    CFRelease(provider);
}

@end
