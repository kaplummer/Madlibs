//
//  RomeoDisplayViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 5/13/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "RomeoDisplayViewController.h"
#import "AppDelegate.h"

@interface RomeoDisplayViewController ()

@property (weak, nonatomic) IBOutlet UILabel *madLibsResult;

@end

@implementation RomeoDisplayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSMutableArray *) romeoarray{
    if  (!_romeoarray){
        _romeoarray = [[NSMutableArray alloc] init];
    }
    return _romeoarray;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.madLibsResult.text = [NSString stringWithFormat:@"'Tis but thy name that is my %@;\r Thou art %@, though not a Montague.\rWhat's Montague? It is nor %@, nor foot,\rNor %@, nor face, nor any other part\rBelonging to a %@. O, be some other name!\rWhat's in a name? that which we call a %@\rBy any other name would smell as %@;\rSo Romeo would, were he not Romeo %@,\rRetain that %@ perfection which he owes\rWithout that title. Romeo, doff thy %@,\rAnd for that name which is no part of thee\rTake all %@.", self.romeoarray[0], self.romeoarray[1], self.romeoarray[2], self.romeoarray[3], self.romeoarray[4], self.romeoarray[5], self.romeoarray[6], self.romeoarray[7], self.romeoarray[8], self.romeoarray[9], self.romeoarray[10]];
                                
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
