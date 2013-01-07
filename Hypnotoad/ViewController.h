//
//  ViewController.h
//  Hypnotoad
//
//  Created by Paul Meinhardt on 1/7/13.
//  Copyright (c) 2013 Paul Meinhardt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIImageView *imageView;

@property (nonatomic, retain) AVAudioPlayer *audio;

@end
