//
//  ViewController.h
//  Maid Cafe
//
//  Created by Khiet Ly on 28/8/18.
//  Copyright © 2018 Zhuofu Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) NSString *productURL;
@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;


@end

