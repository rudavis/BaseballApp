//
//  CreatePlayerTableViewController.h
//  Baseball
//
//  Created by Russ Davis on 1/16/13.
//  Copyright (c) 2013 RTB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PositionTableViewController.h"
#import "Player.h"

@interface CreatePlayerTableViewController : UITableViewController <PositionTableViewController, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (strong, nonatomic) IBOutlet UISegmentedControl *batsSegmentedControl;
@property (strong, nonatomic) IBOutlet UISegmentedControl *throwsSegmentedControl;
@property (strong, nonatomic) IBOutlet UILabel *positionLabel;
@property (strong, nonatomic) Player *player;


- (IBAction)save:(id)sender;


@end
