//
//  ViewController.h
//  Cycle Keeper
//
//  Created by David Edwards on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblSpeed;
@property (copy, nonatomic) NSString *currentSpeed;
@end
