//
//  PositionTableViewController.h
//  Baseball
//
//  Created by Russ Davis on 1/16/13.
//  Copyright (c) 2013 RTB. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PositionTableViewController;

@protocol PositionTableViewController <NSObject>

-(void)positionTableViewController:(PositionTableViewController *)controller didSelectPosition:(NSString *)thePosition;

@end


@interface PositionTableViewController : UITableViewController
{
    NSArray *positions;
}

@property (nonatomic, weak) id <PositionTableViewController> delegate;
@property (nonatomic, strong) NSString *position;

@end
