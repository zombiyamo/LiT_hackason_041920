//
//  OnlineTableViewController.m
//  Navigation
//
//  Created by miyamoto haruna on 2014/02/08.
//  Copyright (c) 2014年 miyamoto haruna. All rights reserved.
//

#import "OnlineTableViewController.h"
#import "NextA_NavigationController.h"
#import "NextB_ViewController.h"


@implementation OnlineTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title =@"About Menter";
    topData = [NSArray arrayWithObjects:@"おまってぃーさん",@"しょうさま",@"みっちー",@"あんとに",@"ゆーぱん",@"りょーちん",nil];
    

}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return topData.count;
}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil) {
//        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    }
//    
//    // Set up the cell...
//    NSString	*string = @"Go to CS193p website";
//    
//    CGRect frame = cell.contentView.bounds;
//    frame = CGRectInset(frame, 10, 1);
//    UIWebView *webView = [[UIWebView alloc] initWithFrame:frame];
//    [webView loadHTMLString:string baseURL:nil];
//    webView.delegate = self;
//    [cell.contentView addSubview:webView];
//    
//    return cell;
//}

//- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
//    if (navigationType == UIWebViewNavigationTypeLinkClicked)
//    {
//        webview = [[UIWebView alloc] init];
//        webview.url = request.URL;
//        [self.navigationController pushViewController:webview animated:YES];
//        [webview release];
//        
//        return NO;
//    }
//    return YES;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [topData objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"押されたセル：%d",indexPath.row);
    
    //遷移先のStoryboard IDを記述
    NSArray *transitionArray = [NSArray arrayWithObjects:
                                @"NextA_NavigationController",
                                @"NextB_ViewController",
                                nil];
    //押されたセルの番地が０だったら実行
    if(indexPath.row == 0)
    {
        //NextAをインスタンス化して、Storyborard IDがtransitionArray[0]（NextA_ViewController）の場所に移動する。
        NextA_NavigationController *nextA_NavigationController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        //push型の遷移で移動する。
        [self.navigationController pushViewController:nextA_NavigationController animated:YES];
//        NSURL *url = [NSURL URLWithString:@"http://blog.syuhari.jp/archives/1512"];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        [self.webView loadRequest:request];

        
        //押されたセルの番地が１だったら実行
    }else if(indexPath.row == 1){
        NextB_ViewController *nextB_ViewController = [self.storyboard instantiateViewControllerWithIdentifier:transitionArray[indexPath.row]];
        [self.navigationController pushViewController:nextB_ViewController animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end