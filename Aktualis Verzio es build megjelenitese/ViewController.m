//
//  ViewController.m
//  Aktualis Verzio es build megjelenitese
//
//  Created by Parti Albert on 2013.07.27..
//  Copyright (c) 2013 Parti Albert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize verziolabel;  //hozzáadva


- (void)viewDidLoad
{
    [super viewDidLoad];

    //hozzáadva
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    NSString *build = [infoDictionary objectForKey:@"CFBundleVersion"];
    NSString *label = [NSString stringWithFormat:@"%@ Build (%@)",version,build];
    [[NSUserDefaults standardUserDefaults] setObject:label forKey:@"bundleVersionKey"];
    [verziolabel setText:[NSString stringWithFormat:@"v%@", label ]];
    verziolabel.backgroundColor = [UIColor clearColor];
    verziolabel.textColor = [UIColor colorWithWhite:0.009 alpha:1.000];
    verziolabel.font = [UIFont fontWithName:@"Helvetica-BoldOblique" size:17.0];
    verziolabel.textAlignment = NSTextAlignmentCenter;
    //idáig
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
