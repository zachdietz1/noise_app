//
//  ColoredNoiseViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/4/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "ColoredNoiseViewController.h"
#import <AVFoundation/AVFoundation.h>

// create audioplayer objects
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
    // load background image
    [self.coloredNoisesView setImage:[UIImage imageNamed:@"colored.jpg"]];
    
}

// makes sure player object stops playing
- (void)handleSoundStop:(AVAudioPlayer *)player {
    
    if(player != nil){
        if(player.isPlaying) {
            [player stop];
        }
        // delete player
        player = nil;
    }
}

// creates a player object based on a sound file name
- (AVAudioPlayer *)makeNoisePlayerWithFileName:(NSString *) filename {
    
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], filename];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    player.numberOfLoops = -1;
    
    return player;
    
    
}

// when back button is pressed, stop sound track
- (IBAction)backButton:(UIButton *)sender {
    
    [self  handleSoundStop:white];
    [self  handleSoundStop:pink];
    [self  handleSoundStop:red];
    [self  handleSoundStop:grey];
    
}

// toggles noise on/off and button display name/stop
- (void)noiseToggle:(id)sender player:(AVAudioPlayer *)player name:(NSString *)name {
    
    // help from http://stackoverflow.com/questions/5264546/change-button-text-from-xcode
    if(!player.isPlaying) {
        [player play];
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
    }
    else {
        [player stop];
        [sender setTitle:name forState:UIControlStateNormal];
    }
    
}


// handles white noise button press
- (IBAction)whiteNoise:(id)sender {
    
    
    // initialize the sound player
    if(white == nil) {
        white = [self  makeNoisePlayerWithFileName:@"white.mp3"];
    }
    
    [self  noiseToggle:sender player:white name:@"White"];
    
    
}

// handles pink noise button press
- (IBAction)pinkNoise:(id)sender {
    
    // initialize the sound player
    if(pink == nil) {
        pink = [self  makeNoisePlayerWithFileName:@"pink.mp3"];
    }
    
    [self  noiseToggle:sender player:pink name:@"Pink"];
    
}

// handles red noise button press
- (IBAction)redNoise:(id)sender {
    // initialize the sound player
    if(red == nil) {
        red = [self  makeNoisePlayerWithFileName:@"red.mp3"];
    }
    
    [self  noiseToggle:sender player:red name:@"Red"];
}

// handles grey noise button press
- (IBAction)greyNoise:(id)sender {
    // initialize the sound player
    if(grey == nil) {
        grey = [self  makeNoisePlayerWithFileName:@"grey.mp3"];
    }
    
    [self  noiseToggle:sender player:grey name:@"Grey"];
}

@end
