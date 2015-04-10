//
//  UIFont+DynamicFontLoading.h
//  DynamicFontLoading
//
//  Created by Dario on 4/10/15.
//  Copyright (c) 2015 Cactus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIFont(UIFont_DynamicFontLoading)

+ (void) registerDynamicallyFontWithFileURL:(NSString*)file;

@end
