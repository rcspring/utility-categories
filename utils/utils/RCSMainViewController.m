//
//  RCSMainViewController.m
//  utils
//
//  Created by Ryan Spring on 9/23/12.
//  Copyright (c) 2012 Ryan Spring. All rights reserved.
//

#import "RCSMainViewController.h"
#import "UIView+RCSUtils.h"
#import "UIFont+RCSUtils.h"
#import "UILabel+RCSUtils.h"

@interface RCSMainViewController ()

@property (nonatomic,retain) IBOutlet UILabel* label;

@end

@implementation RCSMainViewController

@synthesize label;


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
    
    [self.label setShadowWithColor:[UIColor lightGrayColor] andRadius:2.5 withOffset:CGSizeMake(10,20)];
    
    // Here we set the label with the italic variant of a font
    UIFont* exampleFont = [UIFont fontWithName:@"Georgia" size:20];
    
    self.label.font = [exampleFont italicFont];
    
    [self.label adjustFontSizeToFitWithMinimum:5];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
