//
//  skiViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 4/30/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "skiViewController.h"
#import "AppDelegate.h"
#import "skiDisplayViewController.h"


@interface skiViewController ()

@property(nonatomic, weak) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *wordCount;

@end

@implementation skiViewController

int state;

NSString *myString1;
NSString *myString2;
NSString *myString3;
NSString *myString4;
NSString *myString5;
NSString *myString6;
NSString *myString7;
NSString *myString8;
NSString *myString9;
NSString *myString10;
NSString *myString11;
NSString *myString12;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (!state) {
        state = 1;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter an adjective:"];
}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)removeMSKeyboard:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    
}

- (IBAction)setPrompt:(UITextField *)textField
{
    if (state == 1) {
        myString1 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a verb:"];
        self.wordCount.text = [NSString stringWithFormat: @"1 completed out of 12 words"];
        state = 2;
    }
    else  if (state == 2) {
        myString2 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a plural noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"2 completed out of 12 words"];
        state = 3;
    }
    else  if (state == 3) {
        myString3 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"3 completed out of 12 words"];
        state = 4;
    }
    else  if (state == 4) {
        myString4 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"4 completed out of 12 words"];
        state = 5;
    }
    else  if (state == 5) {
        myString5 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"5 completed out of 12 words"];
        state = 6;
    }
    else  if (state == 6) {
        myString6 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a verb:"];
        self.wordCount.text = [NSString stringWithFormat: @"6 completed out of 12 words"];
        state = 7;
    }
    else  if (state == 7) {
        myString7 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter an adjective:"];
        self.wordCount.text = [NSString stringWithFormat: @"7 completed out of 12 words"];
        state = 8;
    }
    else  if (state == 8) {
        myString8 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a verb ending in -ing:"];
        self.wordCount.text = [NSString stringWithFormat: @"8 completed out of 12 words"];
        state = 9;
    }
    else  if (state == 9) {
        myString9 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"9 completed out of 12 words"];
        state = 10;
    }
    else  if (state == 10) {
        myString10 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"10 completed out of 12 words"];
        state = 11;
    }
    else  if (state == 11) {
        myString11 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"Enter a body part:"];
        self.wordCount.text = [NSString stringWithFormat: @"11 completed out of 12 words"];
        state = 12;
    }
    else  if (state == 12) {
        myString12 = self.textField.text;
        self.skipromptLabel.text = [NSString stringWithFormat: @"You're finished! Click SHOW ME MY MADLIB!"];
        self.wordCount.text = [NSString stringWithFormat: @"12 completed out of 12 words"];
        state = 1;
    }
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"skiSegue"]){
        skiDisplayViewController *navController = (skiDisplayViewController *)segue.destinationViewController;
        
        [navController.skiarray addObject: myString1];
        [navController.skiarray addObject: myString2];
        [navController.skiarray addObject: myString3];
        [navController.skiarray addObject: myString4];
        [navController.skiarray addObject: myString5];
        [navController.skiarray addObject: myString6];
        [navController.skiarray addObject: myString7];
        [navController.skiarray addObject: myString8];
        [navController.skiarray addObject: myString9];
        [navController.skiarray addObject: myString10];
        [navController.skiarray addObject: myString11];
        [navController.skiarray addObject: myString12];
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
