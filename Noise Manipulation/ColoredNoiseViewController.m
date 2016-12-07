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
    AVAudioPlayer *white;
    AVAudioPlayer *pink;
    AVAudioPlayer *red;
    AVAudioPlayer *grey;
}
@end

@implementation ColoredNoiseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.coloredNoisesView setImage:[UIImage imageNamed:@"colored.jpg"]];
    
}
- (IBAction)whiteNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/white.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    white = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [white play];
}
- (IBAction)pinkNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/pink.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    pink = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [pink play];
}
- (IBAction)redNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/red.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    red = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [red play];
}
- (IBAction)greyNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/grey.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    grey = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [grey play];
}

@end
