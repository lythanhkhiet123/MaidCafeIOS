//
//  ViewController.m
//  Maid Cafe
//
//  Created by Khiet Ly on 28/8/18.
//  Copyright © 2018 Zhuofu Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController





- (void)viewDidLoad {
   
      [super viewDidLoad];
    /*self.productURL = @"https://www.facebook.com/MaidCafe.o3o/";
    
    NSURL *url = [NSURL URLWithString:self.productURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    _webView = [[WKWebView alloc] initWithFrame:self.view.frame];
    [_webView loadRequest:request];
    _webView.frame = CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:_webView];*/
    
    WKWebViewConfiguration *theConfiguration = [[WKWebViewConfiguration alloc] init];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:theConfiguration];
    webView.navigationDelegate = self;
    NSURL *nsurl=[NSURL URLWithString:@"https://www.facebook.com/MaidCafe.o3o/"];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webView loadRequest:nsrequest];
    [self.view addSubview:webView];
    
}


-(void)webViewDidStartLoad:(UIWebView *)webView{
    [self.activityIndicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityIndicator stopAnimating];
    self.activityIndicator.hidesWhenStopped = YES ;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
