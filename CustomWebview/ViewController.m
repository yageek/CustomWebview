//
//  ViewController.m
//  CustomWebview
//
//  Created by Yannick Heinrich on 17/03/15.
//  Copyright (c) 2015 yageek. All rights reserved.
//

#import "ViewController.h"
#import "AwesomeWebView.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet AwesomeWebView *awesomeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.objc.io/"]];
    [self.awesomeView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
