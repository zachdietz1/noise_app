//
//  ColoredNoiseViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/4/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "ColoredNoiseViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ColoredNoiseViewController ()
{
    AVAudioPlayer *thunder;
}
@end

@implementation ColoredNoiseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.coloredNoisesView setImage:[UIImage imageNamed:@"colored.jpg"]];
    
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/thunder.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    thunder = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
}
- (IBAction)playWhite:(id)sender {
    [thunder play];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
