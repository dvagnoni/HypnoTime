//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Daniel Vagnoni on 2/17/14.
//  Copyright (c) 2014 Daniel Vagnoni. All rights reserved.
//

#import "HypnosisViewController.h"

@implementation HypnosisViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    NSBundle *appBundle = [NSBundle mainBundle];
    self = [super initWithNibName:@"HypnosisViewController" bundle:appBundle];
    
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        [tbi setImage:i];
        [tbi setTitle:@"Hypnosis"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Loaded Hypnosis View");
}

- (void)loadView {
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    [self setView:v];
}

@end
