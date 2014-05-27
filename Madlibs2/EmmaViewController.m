//
//  EmmaViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 5/16/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "EmmaViewController.h"
#import "AppDelegate.h"
#import "EmmaDisplayViewController.h"

@interface EmmaViewController ()

@property(nonatomic, weak) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *wordCount;

@end

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


@implementation EmmaViewController

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
    state = 1;
    // Do any additional setup after loading the view.
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
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a verb:"];
        self.wordCount.text = [NSString stringWithFormat: @"1 out of 10 words completed"];
        state = 2;
    }
    else if (state == 2) {
        myString2 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a place:"];
        self.wordCount.text = [NSString stringWithFormat: @"2 out of 10 words completed"];
        state = 3;
    }
    else if (state == 3) {
        myString3 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"3 out of 10 words completed"];
        state = 4;
    }
    else if (state == 4) {
        myString4 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter an adjective:"];
        self.wordCount.text = [NSString stringWithFormat: @"4 out of 10 words completed"];
        state = 5;
    }
    else if (state == 5) {
        myString5 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter an adjective:"];
        self.wordCount.text = [NSString stringWithFormat: @"5 out of 10 words completed"];
        state = 6;
    }
    else if (state == 6) {
        myString6 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"6 out of 10 words completed"];
        state = 7;
    }
    else if (state == 7) {
        myString7 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"7 out of 10 words completed"];
        state = 8;
    }
    else if (state == 8) {
        myString8 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a plural noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"8 out of 10 words completed"];
        state = 9;
    }
    else if (state == 9) {
        myString9 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a verb:"];
        self.wordCount.text = [NSString stringWithFormat: @"9 out of 10 words completed"];
        state = 10;
    }
    else if (state == 10) {
        myString10 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"You're finished! Click SHOW MY MY MADLIBS!"];
        self.wordCount.text = [NSString stringWithFormat: @"10 out of 10 words completed"];
        state = 1;
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"emmaSegue"]){
        EmmaDisplayViewController *navController = (EmmaDisplayViewController *)segue.destinationViewController;
        [navController.emmaarray addObject: myString1];
        [navController.emmaarray addObject: myString2];
        [navController.emmaarray addObject: myString3];
        [navController.emmaarray addObject: myString4];
        [navController.emmaarray addObject: myString5];
        [navController.emmaarray addObject: myString6];
        [navController.emmaarray addObject: myString7];
        [navController.emmaarray addObject: myString8];
        [navController.emmaarray addObject: myString9];
        [navController.emmaarray addObject: myString10];
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
