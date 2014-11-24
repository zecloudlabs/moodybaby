//
//  SendViewController.m
//  moodybaby
//
//  Created by Luc Walter iBata on 11/23/14.
//  Copyright (c) 2014 ___ibata___. All rights reserved.
//

#import "SendViewController.h"
#import <Parse/Parse.h>

@implementation SendViewController

- (IBAction)sendHappy:(id)sender
{
    
    NSLog(@"Sending happy");
    
    PFObject *kidStatus = [PFObject objectWithClassName:@"KidStatus"];
    
    kidStatus[@"kidName"] = @"Komaiy";
    kidStatus[@"status"] = @"happy";
    
    [kidStatus saveInBackground];
    
}

- (IBAction)sendSad:(id)sender
{
    NSLog(@"Send sad");
    
    PFObject *kidStatus = [PFObject objectWithClassName:@"KidStatus"];
    
    kidStatus[@"kidName"] = @"Komaiy";
    kidStatus[@"status"] = @"sad";
    
    [kidStatus saveInBackground];

}


- (IBAction)sendPlay:(id)sender
{
    NSLog(@"Send play");
    
    PFObject *kidStatus = [PFObject objectWithClassName:@"KidStatus"];
    
    kidStatus[@"kidName"] = @"Komaiy";
    kidStatus[@"status"] = @"play";
    
    [kidStatus saveInBackground];
}

- (IBAction)sendMilk:(id)sender
{
    NSLog(@"send milk");
    
    PFObject *kidStatus = [PFObject objectWithClassName:@"KidStatus"];
    
    kidStatus[@"kidName"] = @"Komaiy";
    kidStatus[@"status"] = @"food";
    
    [kidStatus saveInBackground];
}



@end
