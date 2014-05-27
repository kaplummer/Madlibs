//
//  PoemDisplayViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 5/12/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//


#import "PoemDisplayViewController.h"
#import "AppDelegate.h"

@interface PoemDisplayViewController ()

@property (weak, nonatomic) IBOutlet UILabel *madLibsResult;

@end

@implementation PoemDisplayViewController

- (NSMutableArray *) poemarray{
    if  (!_poemarray){
        _poemarray = [[NSMutableArray alloc] init];
    }
    return _poemarray;
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
    self.madLibsResult.text = [NSString stringWithFormat:@"Shall a compare thee to a %@?\rThou art more %@ and more %@.\rRough winds do shake the %@ of May,\rAnd summer's lease hath too short a date.\rSometimes too %@ the eye of heaven shines,\rAnd often is his %@ complexion dimmed;\rAnd every fair from fair sometime declines;\rBy %@, or nature's changing course, untrimmed;\rBut thy eternal %@ shall not fade,\rNor lose possession of that fair thou ows't,\rNor shall death brag thou wand'rest in his %@,\rWhen in eternal %@ to Time thou grows't.\rSo long as men can %@, or eyes can see,\rSo long lives %@ and %@ gives life to thee.", self.poemarray[0], self.poemarray[1], self.poemarray[2], self.poemarray[3], self.poemarray[4], self.poemarray[5], self.poemarray[6], self.poemarray[7], self.poemarray[8], self.poemarray[9], self.poemarray[10], self.poemarray[11], self.poemarray[11]];
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
