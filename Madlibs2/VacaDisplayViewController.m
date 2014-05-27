//
//  VacaDisplayViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 5/11/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "VacaDisplayViewController.h"
#import "AppDelegate.h"

@interface VacaDisplayViewController ()

@property (weak, nonatomic) IBOutlet UILabel *madLibsResult;

@end

@implementation VacaDisplayViewController

- (NSMutableArray *) vacaarray{
    if  (!_vacaarray){
        _vacaarray = [[NSMutableArray alloc] init];
    }
    return _vacaarray;
}

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
    self.madLibsResult.text = [NSString stringWithFormat:@"Everyone will soon be on a(n) %@ break. Some will go to %@, some will stay home, and some will spend their break %@. My favorite place to go is %@. You can relax on the %@, with the sound of %@ in the background. You have to be careful not to get sunburnt, or your %@ will turn %@ and %@. You can go %@ and %@ on the beach. Hopefully we all have %@ breaks!", self.vacaarray[0], self.vacaarray[1], self.vacaarray[2], self.vacaarray[3], self.vacaarray[4], self.vacaarray[5], self.vacaarray[6], self.vacaarray[7], self.vacaarray[8], self.vacaarray[9], self.vacaarray[10], self.vacaarray[11]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
