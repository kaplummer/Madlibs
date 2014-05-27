//
//  skiDisplayViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 4/30/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "skiDisplayViewController.h"
#import "AppDelegate.h"


@interface skiDisplayViewController ()

@property (weak, nonatomic) IBOutlet UILabel *madLibsResult;

@end

@implementation skiDisplayViewController

- (NSMutableArray *) skiarray{
    if  (!_skiarray){
        _skiarray = [[NSMutableArray alloc] init];
    }
    return _skiarray;
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
    self.madLibsResult.text = [NSString stringWithFormat:@"Many people enjoy the sport of skiing. Skiing is %@. You just %@ your skis to your %@ and go! You will be a(n) %@ at skiing in just a few days! My favorite part of skiing is the %@. There is nothing like skiing in %@. Watching snowflakes %@ is amazing. They are so %@ %@ in the air. The best part of the day is drinking %@. The hot chocolate and %@ warm your frozen %@.", self.skiarray[0], self.skiarray[1], self.skiarray[2], self.skiarray[3], self.skiarray[4], self.skiarray[5], self.skiarray[6], self.skiarray[7], self.skiarray[8], self.skiarray[9], self.skiarray[10], self.skiarray[11]];
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
