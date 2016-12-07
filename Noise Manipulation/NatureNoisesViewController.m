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
    AVAudioPlayer *wind;
    AVAudioPlayer *space;
    AVAudioPlayer *ocean;
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
- (IBAction)windNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/wind.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    wind = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [wind play];
}
- (IBAction)spaceNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/space.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    space = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [space play];
}
- (IBAction)oceanNoise:(id)sender {
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/ocean.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    ocean = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    [ocean play];
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
