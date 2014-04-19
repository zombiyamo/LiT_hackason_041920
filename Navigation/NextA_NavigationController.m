//
//  NextA_NavigationController.m
//  Navigation
//
//  Created by miyamoto haruna on 2014/02/08.
//  Copyright (c) 2014年 miyamoto haruna. All rights reserved.
//

#import "NextA_NavigationController.h"

@implementation NextA_NavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSURL *url = [NSURL URLWithString:@"http://omatty198.github.io/LiTprofile/"];
         NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];

    
}


@end
