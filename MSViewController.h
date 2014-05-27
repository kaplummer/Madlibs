//
//  MSViewController.h
//  Madlibs2
//
//  Created by Katherine Plummer on 4/2/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface MSViewController : UIViewController


@property(nonatomic, weak) IBOutlet UILabel *promptLabel;
@property (weak, nonatomic) IBOutlet UIButton *showMadlib;


- (IBAction)removeMSKeyboard: (UITextField *)textField;

- (IBAction)setPrompt:(UITextField *)textField;


@end
