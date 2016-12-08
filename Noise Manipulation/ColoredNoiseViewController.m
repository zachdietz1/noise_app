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

- (void)handleSoundStop:(AVAudioPlayer *)player {
    
    if(player != nil){
        if(player.isPlaying) {
            [player stop];
        }
        // delete player?
    }
}

- (IBAction)backButton:(UIButton *)sender {
    
    [self handleSoundStop:white];
    [self handleSoundStop:pink];
    [self handleSoundStop:red];
    [self handleSoundStop:grey];
    
}



- (AVAudioPlayer *)makeNoisePlayerWithFileName:(NSString *) filename {

    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], filename];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    player.numberOfLoops = -1;
    
    return player;
    
    
}


- (void)noiseButtonPress:(id)sender player:(AVAudioPlayer *)player name:(NSString *)name {
    
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



- (IBAction)whiteNoise:(id)sender {
    
    
    // initialize the sound player
    if(white == nil) {
        white = [self makeNoisePlayerWithFileName:@"white.mp3"];
    }
    
    [self noiseButtonPress:sender player:white name:@"White"];
    
    
    
}
- (IBAction)pinkNoise:(id)sender {
    
    // initialize the sound player
    if(pink == nil) {
        pink = [self makeNoisePlayerWithFileName:@"pink.mp3"];
    }
    
    [self noiseButtonPress:sender player:pink name:@"Pink"];
    
}
- (IBAction)redNoise:(id)sender {
    // initialize the sound player
    if(red == nil) {
        red = [self makeNoisePlayerWithFileName:@"red.mp3"];
    }
    
    [self noiseButtonPress:sender player:red name:@"Red"];
}
- (IBAction)greyNoise:(id)sender {
    // initialize the sound player
    if(grey == nil) {
        grey = [self makeNoisePlayerWithFileName:@"grey.mp3"];
    }
    
    [self noiseButtonPress:sender player:grey name:@"Grey"];
}

@end


/*
 
 - (IBAction)pinkNoise:(id)sender {
 // codewithchris' code:
 NSString *path = [NSString stringWithFormat:@"%@/pink.mp3", [[NSBundle mainBundle] resourcePath]];
 NSURL *soundUrl = [NSURL fileURLWithPath:path];
 
 // Create audio player object and initialize with URL to sound
 pink = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
 
 [pink play];
 }

 
 */




