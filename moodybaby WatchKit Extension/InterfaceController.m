//
//  InterfaceController.m
//  moodybaby WatchKit Extension
//
//  Created by Luc Walter iBata on 11/23/14.
//  Copyright (c) 2014 ___ibata___. All rights reserved.
//

#import "InterfaceController.h"
#import <Parse/Parse.h>


@interface InterfaceController()

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        [Parse setApplicationId:@"FWh1BnBXGYePfdrnbFF11eEcWSzINhxAv2X0Yotn"
                      clientKey:@"AsgrslRfJLFl3evoktCuJCMhJMmLkE3mQHvlfU7x"];
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
   
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
}


@end



