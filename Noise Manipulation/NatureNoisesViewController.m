//
//  NatureNoisesViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/4/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "NatureNoisesViewController.h"

@interface NatureNoisesViewController ()

@end

@implementation NatureNoisesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.natureView setImage:[UIImage imageNamed:@"nature.jpg"]];
}

@end
