//
//  AcknowledgementsViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/6/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "AcknowledgementsViewController.h"

@interface AcknowledgementsViewController ()

@end

@implementation AcknowledgementsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Load background image
    [self.acknowledgementsView setImage:[UIImage imageNamed:@"acknowledgements"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
