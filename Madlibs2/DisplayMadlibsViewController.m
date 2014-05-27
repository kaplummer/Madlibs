//
//  DisplayMadlibsViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 3/17/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "DisplayMadlibsViewController.h"
#import "AppDelegate.h"

@interface DisplayMadlibsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *madLibsResult;

@end

@implementation DisplayMadlibsViewController

- (NSMutableArray *) msarray{
    if  (!_msarray){
        _msarray = [[NSMutableArray alloc] init];
    }
     return _msarray;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//Issue: if user continues entering words after being prompted to look at madlibs, then the new words begin replacing old words at msarray[0]

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.madLibsResult.text = [NSString stringWithFormat:@"%@ inspires a quest for %@ and %@ that lasts a lifetime. To prepare our %@ for the wider world we %@ our %@ %@ preparatory program with a global curriculum that fosters %@ with issues beyond %@. Our comprehensive %@ program and extensive %@ offerings develop in each %@ the %@ to reach their full potential. Above all, our %@ dedicate themselves to excellence in %@ young %@ and in cultivating %@. %@ is our motto and defines our expectations that our %@ participate as citizens of %@ and a larger world", self.msarray[0], self.msarray[1], self.msarray[2], self.msarray[3], self.msarray[4], self.msarray[5], self.msarray[6], self.msarray[7], self.msarray[0], self.msarray[8], self.msarray[9], self.msarray[3], self.msarray[10], self.msarray[11], self.msarray[12], self.msarray[3], self.msarray[13], self.msarray[14], self.msarray[3], self.msarray[15]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
