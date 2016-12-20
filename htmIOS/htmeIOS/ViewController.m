//
//  ViewController.m
//  htmeIOS
//
//  Created by 宋学谦 on 16/5/6.
//  Copyright © 2016年 宋学谦. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:webView];
    
    NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
    
    NSString *filePath =[resourcePath stringByAppendingPathComponent:@"apple.html"];
    
    
    
    
    NSString *htmlstring = [[NSString alloc] initWithContentsOfFile:filePath  encoding:NSUTF8StringEncoding error:nil];
    
    [webView loadHTMLString:htmlstring baseURL:[NSURL fileURLWithPath:[ [NSBundle mainBundle] bundlePath]]];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
