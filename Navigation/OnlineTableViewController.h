//
//  OnlineTableViewController.h
//  Navigation
//
//  Created by miyamoto haruna on 2014/02/08.
//  Copyright (c) 2014年 miyamoto haruna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextA_NavigationController.h"


@interface OnlineTableViewController : UITableViewController
{
    NSString *_userIDString;
      NSArray *topData;
    }
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic,retain)NSString *userIDString;

@end
