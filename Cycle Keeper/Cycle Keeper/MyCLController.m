//
//  MyCLController.m
//  Cycle Keeper
//
//  Created by David Edwards on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyCLController.h"

@implementation MyCLController

@synthesize locationManager;
@synthesize delegate;

-(id) init {
    self = [super init];
    if(self!=nil)
    {
        self.locationManager = [[CLLocationManager alloc] init];
        self.delegate = self; // Send location updates to itself
    }
    return self;
}

-(void) locationManager:(CLLocationManager *)manager 
        didUpdateToLocation:(CLLocation *)newLocation 
        fromLocation:(CLLocation *)oldLocation
{
    [self.delegate locationUpdate:newLocation];
}

-(void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    [self.delegate locationError:error];
}

@end
