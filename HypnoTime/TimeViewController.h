//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Daniel Vagnoni on 2/17/14.
//  Copyright (c) 2014 Daniel Vagnoni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController {
    __weak IBOutlet UILabel *timeLabel;
}
- (IBAction)showCurrentTime:(id)sender;


@end
