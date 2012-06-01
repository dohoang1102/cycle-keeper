//
//  ViewController.h
//  Cycle Keeper
//
//  Created by David Edwards on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCLController.h"

@interface ViewController : UIViewController <MyCLControllerDelegate> {
    MyCLController *locationController;
}
@property (weak, nonatomic) IBOutlet UILabel *lblSpeed;
@property (copy, nonatomic) NSString *currentSpeed;
-(void) locationUpdate:(CLLocation *)location;
-(void) locationError:(NSError *)error;

@end
