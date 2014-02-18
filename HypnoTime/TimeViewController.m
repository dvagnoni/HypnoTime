//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Daniel Vagnoni on 2/17/14.
//  Copyright (c) 2014 Daniel Vagnoni. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        [tbi setImage:i];
        [tbi setTitle: @"Time"];
        [[self view] setBackgroundColor:[UIColor greenColor]];
    }
    return self;
}

- (void)viewDidUnload {
    [super viewDidUnload];
    NSLog(@"timeLabel = %@", timeLabel);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"TimeViewController loaded");
}

- (IBAction)showCurrentTime:(id)sender {
    NSDate *now = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    [timeLabel setText:[formatter stringFromDate:now]];
}

@end
