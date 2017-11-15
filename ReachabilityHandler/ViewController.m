//
//  ViewController.m
//  ReachabilityHandler
//
//  Created by Sudhakar Dasari on 15/11/17.
//  Copyright © 2017 Sudhakar Dasari. All rights reserved.
//

#import "ViewController.h"
#import "ReachabilityHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (![ReachabilityHandler checkInternetConnection]) {
       
        NSLog(@"Internet is available");
    }else{
        NSLog(@"Internet is unavailable");
    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
