//
//  NatureNoisesViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/4/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "NatureNoisesViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface NatureNoisesViewController ()
{
    AVAudioPlayer *rain;
    AVAudioPlayer *thunder;
}
@end

@implementation NatureNoisesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.natureView setImage:[UIImage imageNamed:@"nature.jpg"]];
}

- (IBAction)rainNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/rain.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    rain = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [rain play];
}

- (IBAction)thunderNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/thunder.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    thunder = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [thunder play];
}

@end
