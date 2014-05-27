//
//  EmmaDisplayViewController.m
//  Madlibs2
//
//  Created by Katherine Plummer on 5/16/14.
//  Copyright (c) 2014 Katherine Plummer. All rights reserved.
//

#import "EmmaDisplayViewController.h"
#import "AppDelegate.h"

@interface EmmaDisplayViewController ()

@property (weak, nonatomic) IBOutlet UILabel *madLibsResult;

@end

@implementation EmmaDisplayViewController

- (NSMutableArray *) emmaarray{
    if  (!_emmaarray){
        _emmaarray = [[NSMutableArray alloc] init];
    }
    return _emmaarray;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.madLibsResult.text = [NSString stringWithFormat:@"If I loved you less, I might be able to talk about it more. But you know what I am. You hear nothing but %@ from me. I have blamed you and %@ you, and you have borne it as no other woman in %@ would have borne it. Bear with the %@ I would tell you now, %@ Emma, as well as you have borne with them. The manner, perhaps, may have as %@ to recommend them. God knows, I have been a very indifferent %@. But you understand %@. Yes, you see, you understand my %@, and will return them if you can. At present, I ask only to %@ once to %@ your voice.", self.emmaarray[0], self.emmaarray[1], self.emmaarray[2], self.emmaarray[3], self.emmaarray[4], self.emmaarray[5], self.emmaarray[6], self.emmaarray[7], self.emmaarray[8], self.emmaarray[9], self.emmaarray[9]];
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
