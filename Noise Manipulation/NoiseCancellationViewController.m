//
//  NoiseCancellationViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/4/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "NoiseCancellationViewController.h"

@interface NoiseCancellationViewController ()

@end

@implementation NoiseCancellationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // load background image
    [self.noiseCancellationView setImage:[UIImage imageNamed:@"monkey.jpg"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
