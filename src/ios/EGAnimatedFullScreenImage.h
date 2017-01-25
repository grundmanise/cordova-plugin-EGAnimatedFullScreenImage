//
//  EGAnimatedFullScreenImage.h
//  Copyright (c) 2016 Edgars Grundmanis
//

#import <Cordova/CDVPlugin.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FLAnimatedImage.h"

@interface EGAnimatedFullScreenImage : CDVPlugin <UIDocumentInteractionControllerDelegate>


@property (nonatomic, strong) FLAnimatedImageView* imageView;
@property (nonatomic, strong) UIView* parentView;

- (void) showImageURL:(CDVInvokedUrlCommand*)command;
- (void) hide:(CDVInvokedUrlCommand*)command;
- (void) isVisible:(CDVInvokedUrlCommand*)command;
- (void) show:(NSString*)fullPath;

@end
