//
//  RomeoViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 5/13/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "RomeoViewController.h"
#import "AppDelegate.h"
#import "RomeoDisplayViewController.h"

@interface RomeoViewController ()

@property(nonatomic, weak) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *wordCount;

@end

@implementation RomeoViewController

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
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"1 completed out of 11 words"];
        state = 2;
    }
    else if (state == 2) {
        myString2 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a bodypart:"];
        self.wordCount.text = [NSString stringWithFormat: @"2 completed out of 11 words"];
        state = 3;
    }
    else if (state == 3) {
        myString3 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a bodypart:"];
        self.wordCount.text = [NSString stringWithFormat: @"3 completed out of 11 words"];
        state = 4;
    }
    else if (state == 4) {
        myString4 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"4 completed out of 11 words"];
        state = 5;
    }
    else if (state == 5) {
        myString5 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"5 completed out of 11 words"];
        state = 6;
    }
    else if (state == 6) {
        myString6 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter an adjective:"];
        self.wordCount.text = [NSString stringWithFormat: @"6 completed out of 11 words"];
        state = 7;
    }
    else if (state == 7) {
        myString7 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a verb ending in -ed:"];
        self.wordCount.text = [NSString stringWithFormat: @"7 completed out of 11 words"];
        state = 8;
    }
    else if (state == 8) {
        myString8 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter an adjective:"];
        self.wordCount.text = [NSString stringWithFormat: @"8 completed out of 11 words"];
        state = 9;
    }
    else if (state == 9) {
        myString9 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"9 completed out of 11 words:"];
        state = 10;
    }
    else if (state == 10) {
        myString10 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
        self.wordCount.text = [NSString stringWithFormat: @"10 completed out of 11 words"];
        state = 11;
    }
    else if (state == 11) {
        myString11 = self.textField.text;
        self.promptLabel.text = [NSString stringWithFormat: @"You're finished! Click SHOW ME MY MADLIBS!"];
        self.wordCount.text = [NSString stringWithFormat: @"11 completed out of 11 words"];
        state = 1;
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"romeoSegue"]){
        RomeoDisplayViewController *navController = (RomeoDisplayViewController *)segue.destinationViewController;
        
        [navController.romeoarray addObject: myString1];
        [navController.romeoarray addObject: myString2];
        [navController.romeoarray addObject: myString3];
        [navController.romeoarray addObject: myString4];
        [navController.romeoarray addObject: myString5];
        [navController.romeoarray addObject: myString6];
        [navController.romeoarray addObject: myString7];
        [navController.romeoarray addObject: myString8];
        [navController.romeoarray addObject: myString9];
        [navController.romeoarray addObject: myString10];
        [navController.romeoarray addObject: myString11];
       
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
