//
//  ReceiveViewController.m
//  moodybaby
//
//  Created by Luc Walter iBata on 11/23/14.
//  Copyright (c) 2014 ___ibata___. All rights reserved.
//

#import "ReceiveViewController.h"
#import <Parse/Parse.h>

@implementation ReceiveViewController

@synthesize displayImage;

- (void)willActivate
{
    NSLog(@"Receiver will activiate");
    
    PFQuery *query = [PFQuery queryWithClassName:@"KidStatus"];
    
    [query whereKey:@"kidName" equalTo:@"Komaiy"];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
       
        //NSLog(@"REceived from PArse with objects = %@ and error = %@", objects, error);
        
        if (!error)
        {
            // Grab the last object
            if ([objects count] > 0)
            {
                PFObject *object = [objects lastObject];
                
                NSLog(@"Last object = %@ and status = %@", object, [object objectForKey:@"status"]);
                
                NSString *status = [object objectForKey:@"status"];
                
                if ([status isEqualToString:@"happy"])
                {
                    [self.displayImage setImageNamed:@"happy.jpg"];
                }
                else if ([status isEqualToString:@"sad"])
                {
                    [self.displayImage setImageNamed:@"sad.jpg"];
                }
                else if ([status isEqualToString:@"play"])
                {
                    [self.displayImage setImageNamed:@"stock-vector-happy-smiley-emoticon-face-123417493.jpg"];
                }
                else if ([status isEqualToString:@"food"])
                {
                    [self.displayImage setImageNamed:@"baby-smiley-milk.png"];
                }
                    
                
            }
        }
        else
        {
            // Log details of the failure
            NSLog(@"Error receiving from parse: %@ %@", error, [error userInfo]);
        }
    }];
}

@end

