//
//  ViewController.m
//  moodybaby
//
//  Created by Luc Walter iBata on 11/23/14.
//  Copyright (c) 2014 ___ibata___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendHappy:(id)sender{

    NSLog(@"Sending happy");
}

- (IBAction)sendSad:(id)sender
{
    NSLog(@"Send sad");
    
}


- (IBAction)sendPlay:(id)sender
{
    NSLog(@"Send play");
}

- (IBAction)sendMilk:(id)sender
{
    NSLog(@"send milk");
}

@end
