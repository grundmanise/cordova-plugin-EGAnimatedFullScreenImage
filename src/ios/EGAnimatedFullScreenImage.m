//
//  EGAnimatedFullScreenImage.m
//  Copyright (c) 2016 Edgars Grundmanis
//

#import "EGAnimatedFullScreenImage.h"
#import "FLAnimatedImage.h"

@implementation EGAnimatedFullScreenImage


- (void) showImageURL:(CDVInvokedUrlCommand*)command {
    
    NSString *fullPath = [[command.arguments objectAtIndex:0] valueForKey:@"url"];
    
    [self show:fullPath];
    
}

- (void) show:(NSString*)fullPath {
    
    if (_imageView)
        return;
    
    CGFloat screenScale = [[UIScreen mainScreen] scale];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"www/application/app/%@@%.0fx", fullPath, screenScale] ofType:@"gif"];
    
    _imageView = [[FLAnimatedImageView alloc] init];
    _imageView.animatedImage = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfFile:path]];
    _imageView.frame = [[UIScreen mainScreen] bounds];
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    _imageView.tag = 777; // (almost) random custom tag

    _parentView = [UIApplication sharedApplication].keyWindow.rootViewController.view;

    [_parentView addSubview:_imageView];
    [_parentView bringSubviewToFront:_imageView];

    _parentView.userInteractionEnabled = NO;  // disable user interaction while image is shown
    
}

- (void) hide:(CDVInvokedUrlCommand *)command {
    
    for(UIView *subview in [_parentView subviews]) {
        
        if(subview.tag == 777) {
            
            [subview removeFromSuperview];
            _imageView = nil;
            _parentView.userInteractionEnabled = YES; // re-enable user interaction upon completion
            
        }
        
    }

}

@end
