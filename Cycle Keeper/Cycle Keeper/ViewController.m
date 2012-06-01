    //
//  ViewController.m
//  Cycle Keeper
//
//  Created by David Edwards on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblSpeed;
@synthesize currentSpeed = _currentSpeed;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    locationController = [[MyCLController alloc] init];
    locationController.delegate = self;
    [locationController.locationManager startUpdatingLocation];
    
    [self.lblSpeed setFont:[UIFont fontWithName:@"LCDDot TR" size:60]];
    [self.lblSpeed setText:@"666"];
}

- (void)viewDidUnload
{
    [self setLblSpeed:nil];
    locationController = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
-(void)locationUpdate:(CLLocation *)location
{
    [self.lblSpeed setText:[location description]];
}
-(void)locationError:(NSError *)error
{
    [self.lblSpeed setText:[error description]];
}

@end
