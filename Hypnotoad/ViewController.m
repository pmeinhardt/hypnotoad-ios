//
//  ViewController.m
//  Hypnotoad
//
//  Created by Paul Meinhardt on 1/7/13.
//  Copyright (c) 2013 Paul Meinhardt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView=_imageView;
@synthesize audio=_audio;

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSArray *images = [NSArray arrayWithObjects:
                       [UIImage imageNamed:@"toad-0.png"],
                       [UIImage imageNamed:@"toad-1.png"],
                       [UIImage imageNamed:@"toad-2.png"],
                       [UIImage imageNamed:@"toad-3.png"],
                       [UIImage imageNamed:@"toad-4.png"],
                       [UIImage imageNamed:@"toad-5.png"], nil];

    [self.imageView setAnimationImages:images];
    [self.imageView setAnimationDuration:0.4];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.imageView startAnimating];

    if (self.audio == nil) {
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"hypno" ofType:@"m4a"]];
        self.audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
        [self.audio setNumberOfLoops:-1];
    }

    [self.audio play];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.audio stop];
    [self.imageView stopAnimating];
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_imageView release];
    [_audio release];
    [super dealloc];
}

@end
