//
//  ViewController.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/4/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import "UIKit/UIKit.h"
#import <AVFoundation/AVFoundation.h>
#import "ViewController.h"

// create audioplayer object
@interface ViewController ()
{
    AVAudioPlayer *randomplayer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Load background image
    [self.photoHomeView setImage:[UIImage imageNamed:@"home"]];
}

// if surprise me is clicked and no track is already playing, play random track
// else stop track
- (IBAction)surpriseMe:(id)sender {
    
    if(randomplayer == nil)
    {
        NSArray *options = @[@"rain",@"wind",@"space",@"ocean",@"thunder",@"white",@"pink",@"red",@"grey"];
        // generate random number
        int rand = arc4random_uniform(9);
        // index into array to select name
        NSString *filename = [NSString stringWithFormat:@"%@.mp3",options[rand]];
        // play random track
        randomplayer = [self  makeNoisePlayerWithFileName:filename];
    }
    // toggle sound and name...like this if statement?? We do! XD
    if([self  noiseToggle:sender player:randomplayer name:@"Surprise Me!"])
    {
        randomplayer = nil;
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

// toggles noise on/off and button display "surprise me"/"stop"
- (BOOL)noiseToggle:(id)sender player:(AVAudioPlayer *)player name:(NSString *)name {
    
    // help from http://stackoverflow.com/questions/5264546/change-button-text-from-xcode
    if(!player.isPlaying) {
        [player play];
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
        return NO;
    }
    else {
        [player stop];
        [sender setTitle:name forState:UIControlStateNormal];
        return YES;
    }
    
}

// turn off surprise me track if go to another screen...
-(void)pageChangeHandle
{
    if (randomplayer != nil)
    {
        if(randomplayer.isPlaying) {
            [randomplayer stop];
        }
        // delete player
        randomplayer = nil;
    }
}

- (IBAction)natureNoises:(id)sender {
    [self pageChangeHandle];
}
- (IBAction)coloredNoises:(id)sender {
    [self pageChangeHandle];
}
- (IBAction)noiseCancellation:(id)sender {
    [self pageChangeHandle];
}
- (IBAction)acknowledgments:(id)sender {
    [self pageChangeHandle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
