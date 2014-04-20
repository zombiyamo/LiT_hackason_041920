//
//  NextA_NavigationController.m
//  Navigation
//
//  Created by miyamoto haruna on 2014/02/08.
//  Copyright (c) 2014年 miyamoto haruna. All rights reserved.
//
#import "AppDelegate.h"
#import "NextA_NavigationController.h"
#import "OnlineTableViewController.h"


@implementation NextA_NavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate* appDelegate = [[UIApplication sharedApplication] delegate];
    NSString* itemStr = [appDelegate.toyBox objectForKey:@"ゆーざー"];
    NSLog(@"お宝：%@",itemStr);
        NSURL *url = [NSURL URLWithString:itemStr];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
    
    
    
}
- (IBAction)return:(UIStoryboardSegue *)segue
{
    //もし戻ってきた時にやりたい処理があれば書く。なければナシのままで。
}


@end
