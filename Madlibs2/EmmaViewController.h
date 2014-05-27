//
//  EmmaViewController.h
//  Madlibs2
//
//  Created by Katherine Plummer on 5/16/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@interface EmmaViewController : ViewController

@property(nonatomic, weak) IBOutlet UILabel *promptLabel;
@property (weak, nonatomic) IBOutlet UIButton *showMadlib;


- (IBAction)removeMSKeyboard: (UITextField *)textField;

- (IBAction)setPrompt:(UITextField *)textField;

@end
