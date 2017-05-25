//
//  NoiseManipulationHelpers.m
//  Noise Manipulation
//
//  Created by Zachary Dietz on 12/8/16.
//  Copyright © 2016 Dietz and King. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NoiseManipulationHelpers.h"

@interface NoiseManipulationHelpers ()

@end

@implementation NoiseManipulationHelpers


+ (void)handleSoundStop:(AVAudioPlayer *)player {
    
    if(player != nil){
        if(player.isPlaying) {
            [player stop];
        }
        // delete player
        player = nil;
    }
}

+ (AVAudioPlayer *)makeNoisePlayerWithFileName:(NSString *) filename {
    
    // codewithchris' code:
    NSString *path = [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], filename];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    player.numberOfLoops = -1;
    
    return player;
    
}

+ (void)noiseToggle:(id)sender player:(AVAudioPlayer *)player name:(NSString *)name {
    
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

@end
