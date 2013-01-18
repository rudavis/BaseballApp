//
//  CreatePlayerTableViewController.m
//  Baseball
//
//  Created by Russ Davis on 1/16/13.
//  Copyright (c) 2013 RTB. All rights reserved.
//

#import "CreatePlayerTableViewController.h"
#import "PositionTableViewController.h"

@interface CreatePlayerTableViewController ()

@end

@implementation CreatePlayerTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _firstNameTextField.delegate = self;
    _lastNameTextField.delegate = self;
    
    _player = [[Player alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ChoosePosition"])
    {
        PositionTableViewController *positionTableViewController = segue.destinationViewController;
        positionTableViewController.delegate = self;
        positionTableViewController.position = _player.position;
    }
}

-(void)positionTableViewController:(PositionTableViewController *)controller didSelectPosition:(NSString *)thePosition {
    self.positionLabel.text = thePosition;
    [self.navigationController popViewControllerAnimated:YES];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
    
}

- (IBAction)save:(id)sender {
    _player.firstName = _firstNameTextField.text;
    _player.lastName = _lastNameTextField.text;
    _player.bats = [_batsSegmentedControl titleForSegmentAtIndex:_batsSegmentedControl.selectedSegmentIndex];
    _player.throws = [_throwsSegmentedControl titleForSegmentAtIndex:_throwsSegmentedControl.selectedSegmentIndex];
    _player.position = _positionLabel.text;
}
@end
