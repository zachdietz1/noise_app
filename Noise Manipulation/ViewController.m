//
//  ViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/4/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidAppear:(BOOL)animated
{
    [self.photoHomeView setImage:[UIImage imageNamed:@"home"]];
    //[self sendSubviewToBack:self.photoHomeView];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
