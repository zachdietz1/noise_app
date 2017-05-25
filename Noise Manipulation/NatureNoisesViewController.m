//
//  NatureNoisesViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/4/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "NatureNoisesViewController.h"
#import <AVFoundation/AVFoundation.h>

// create audioplayer objects
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
    // load background image
    [self.natureView setImage:[UIImage imageNamed:@"nature.jpg"]];
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

// when back button is pressed, stop sound track
- (IBAction)backButton:(UIButton *)sender {
    
    [self handleSoundStop:rain];
    [self handleSoundStop:wind];
    [self handleSoundStop:space];
    [self handleSoundStop:ocean];
    [self handleSoundStop:thunder];
    
}

// handles rain noise button press
- (IBAction)rainNoise:(id)sender {
    
    // initialize the sound player
    if(rain == nil) {
        rain = [self makeNoisePlayerWithFileName:@"rain.mp3"];
    }
    
    [self noiseToggle:sender player:rain name:@"Rain"];
    
}

// handles wind noise button press
- (IBAction)windNoise:(id)sender {
    // initialize the sound player
    if(wind == nil) {
        wind = [self makeNoisePlayerWithFileName:@"wind.mp3"];
    }
    
    [self noiseToggle:sender player:wind name:@"Wind"];
}

// handles space noise button press
- (IBAction)spaceNoise:(id)sender {
    // initialize the sound player
    if(space == nil) {
        space = [self makeNoisePlayerWithFileName:@"space.mp3"];
    }
    
    [self noiseToggle:sender player:space name:@"Space"];
}

// handles ocean noise button press
- (IBAction)oceanNoise:(id)sender {
    // initialize the sound player
    if(ocean == nil) {
        ocean = [self makeNoisePlayerWithFileName:@"ocean.mp3"];
    }
    
    [self noiseToggle:sender player:ocean name:@"Ocean"];
}

// handles thunder noise button press
- (IBAction)thunderNoise:(id)sender {
    // initialize the sound player
    if(thunder == nil) {
        thunder = [self makeNoisePlayerWithFileName:@"thunder.mp3"];
    }
    
    [self noiseToggle:sender player:thunder name:@"Thunder"];
}

@end
