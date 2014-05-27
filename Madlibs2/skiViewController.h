//
//  skiViewController.h
//  Madlibs2
//
//  Created by Katherine Plummer on 4/30/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@interface skiViewController : ViewController



@property(nonatomic, weak) IBOutlet UILabel *skipromptLabel;
@property (weak, nonatomic) IBOutlet UIButton *showMadlib;


- (IBAction)removeMSKeyboard: (UITextField *)textField;

- (IBAction)setPrompt:(UITextField *)textField;


@end
