//
//  OnlineTableViewController.m
//  Navigation
//
//  Created by miyamoto haruna on 2014/02/08.
//  Copyright (c) 2014年 miyamoto haruna. All rights reserved.
//
#import "AppDelegate.h"
#import "OnlineTableViewController.h"
#import "NextA_NavigationController.h"
#import "NextB_ViewController.h"


@implementation OnlineTableViewController

@synthesize userIDString = _userIDString;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title =@"About Menter";
    topData = [NSArray arrayWithObjects:@"おまってぃーさん",@"しょうさま",@"みっちー",@"あんとに",@"ゆーぱん",@"りょーちん",@"たけさん",@"みやも",@"イカ",nil];
    

    //連想配列の値となる配列「eSeasons」を生成
    NSArray *eSeasons = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9", nil];
    
    //辞書オブジェクト「myDic」を生成
    NSDictionary *myDic = [[NSDictionary alloc]initWithObjects:eSeasons forKeys:topData];
    
    
   
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return topData.count;
}

//セルが押された時
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [topData objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:@"CheekFont" size:20.0];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"押されたセル：%d",indexPath.row);
    
       int userID = indexPath.row+1;
    _userIDString = [NSString stringWithFormat:@"http://omatty198.github.io/LiTprofile/%d.html",userID];
    AppDelegate* appDelegate = [[UIApplication sharedApplication] delegate];
    [appDelegate.toyBox setObject:_userIDString forKey:@"ゆーざー"];
       
    [super didReceiveMemoryWarning];
    
    NextA_NavigationController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"NextA_NavigationController"];
//    secondVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; //ふわっと
//    secondVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;//回転
//    secondVC.modalTransitionStyle = UIModalTransitionStylePartialCurl;//めくってるやつ
//     [self presentViewController:secondVC animated:YES completion:nil];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
