//
//  MSViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 4/2/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "MSViewController.h"
#import "DisplayMadlibsViewController.h"
#import "AppDelegate.h"

@interface MSViewController ()

@property(nonatomic, weak) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *wordCount;

@end

@implementation MSViewController

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
NSString *myString13;
NSString *myString14;
NSString *myString15;
NSString *myString16;

int state;

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
        self.promptLabel.text = [NSString stringWithFormat: @"Enter the name of a school or organization:"];
        self.wordCount.text = [NSString stringWithFormat: @"0 completed out of 16 words:"];
    }
    
    
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
    self.wordCount.text = [NSString stringWithFormat: @"1 completed out of 16 words"];
    state = 2;
    }

else if (state == 2){
    myString2 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat: @"Enter a noun:"];
    self.wordCount.text = [NSString stringWithFormat: @"2 completed out of 16 words"];
    state = 3;
}
else if (state == 3){
    myString3 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a plural noun:"];
    self.wordCount.text = [NSString stringWithFormat: @"3 completed out of 16 words"];
    state = 4;
}
else if (state == 4) {
    myString4 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a verb:"];
    self.wordCount.text = [NSString stringWithFormat: @"4 completed out of 16 words"];
    state = 5;
}
else if (state == 5){
    myString5 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter an adjective:"];
    self.wordCount.text = [NSString stringWithFormat: @"5 completed out of 16 words"];
    state = 6;
}
else if (state == 6){
    myString6 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a noun:"];
    self.wordCount.text = [NSString stringWithFormat: @"6 completed out of 16 words"];
    state = 7;
}
else if (state == 7){
    myString7 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a noun:"];
    self.wordCount.text = [NSString stringWithFormat: @"7 completed out of 16 words"];
    state = 8;
}
else if (state == 8){
    myString8 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a noun:"];
    self.wordCount.text = [NSString stringWithFormat: @"8 completed out of 16 words"];
    state = 9;
}
else if (state == 9){
    myString9 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter an adjective:"];
    self.wordCount.text = [NSString stringWithFormat: @"9 completed out of 16 words"];
    state = 10;
}

else if (state == 10){
    myString10 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a noun:"];
    self.wordCount.text = [NSString stringWithFormat: @"10 completed out of 16 words"];
    state = 11;
}
else if (state == 11){
    myString11 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a plural noun:"];
    self.wordCount.text = [NSString stringWithFormat: @"11 completed out of 16 words"];
    state = 12;
}
else if (state == 12){
    myString12 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a verb ending in -ing:"];
    self.wordCount.text = [NSString stringWithFormat: @"12 completed out of 16 words"];
    state = 13;
}
else if (state == 13){
    myString13 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a plural noun:"];
    self.wordCount.text = [NSString stringWithFormat: @"13 completed out of 16 words"];
    state = 14;
}
else if (state == 14){
    myString14 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a motto or saying:"];
    self.wordCount.text = [NSString stringWithFormat: @"14 completed out of 16 words"];
    state = 15;

}
else if (state == 15){
    myString15 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"Enter a place:"];
    self.wordCount.text = [NSString stringWithFormat: @"15 completed out of 16 words"];
    state = 16;
}
else if (state == 16){
    myString16 = self.textField.text;
    self.promptLabel.text = [NSString stringWithFormat:@"You're finished! Click SHOW ME MY MADLIB!:"];
    self.wordCount.text = [NSString stringWithFormat: @"16 completed out of 16 words"];
    state = 1;
}
}






// Idea: set up variables in setPrompt (loading each time), then add to msarray in prepare for Segue
// Problem :setPrompt resets msArray to whatever is in textfield currently
// Carly suggests: using states (0,1,2, etc.) or if statements

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"msSegue"]){
        
        DisplayMadlibsViewController *navController = (DisplayMadlibsViewController *)segue.destinationViewController;
        [navController.msarray addObject: myString1];
        [navController.msarray addObject: myString2];
        [navController.msarray addObject: myString3];
        [navController.msarray addObject: myString4];
        [navController.msarray addObject: myString5];
        [navController.msarray addObject: myString6];
        [navController.msarray addObject: myString7];
        [navController.msarray addObject: myString8];
        [navController.msarray addObject: myString9];
        [navController.msarray addObject: myString10];
        [navController.msarray addObject: myString11];
        [navController.msarray addObject: myString12];
        [navController.msarray addObject: myString13];
        [navController.msarray addObject: myString14];
        [navController.msarray addObject: myString15];
        [navController.msarray addObject: myString16];
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
