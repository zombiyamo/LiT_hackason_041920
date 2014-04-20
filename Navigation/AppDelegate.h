//
//  AppDelegate.h
//  Navigation
//
//  Created by miyamoto haruna on 2014/02/08.
//  Copyright (c) 2014年 miyamoto haruna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{

    NSMutableArray *toyBox;//ここになんでもしまっていいよ！！！！！！！

}

@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic) NSMutableDictionary*toyBox;
@property (strong, nonatomic) UITableViewController *OnlineTableViewController;
@property (strong, nonatomic) UITableViewController *NextA_NavigationController;


@end
