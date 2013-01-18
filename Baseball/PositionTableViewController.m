//
//  PositionTableViewController.m
//  Baseball
//
//  Created by Russ Davis on 1/16/13.
//  Copyright (c) 2013 RTB. All rights reserved.
//

#import "PositionTableViewController.h"

@interface PositionTableViewController ()

@end

@implementation PositionTableViewController {
    NSUInteger selectedIndex;
}
@synthesize delegate = _delagate;
@synthesize position = _position;

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
    positions = [NSArray arrayWithObjects: @"First Base", @"Second Base", @"Third Base", @"Right Field", @"Center Field", @"Left Field", @"Pitcher", @"Catcher", nil];
    
    selectedIndex = [positions indexOfObject:self.position];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [positions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PositionCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [positions objectAtIndex:indexPath.row];
    
    if (indexPath.row == selectedIndex)
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    else
        cell.accessoryType = UITableViewCellAccessoryNone;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
	if (selectedIndex != NSNotFound)
	{
		UITableViewCell *cell = [tableView cellForRowAtIndexPath:[NSIndexPath                                   indexPathForRow:selectedIndex inSection:0]];
		cell.accessoryType = UITableViewCellAccessoryNone;
	}
	selectedIndex = indexPath.row;
	UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
	cell.accessoryType = UITableViewCellAccessoryCheckmark;
	NSString *thePosition = [positions objectAtIndex:indexPath.row];
	[self.delegate positionTableViewController:self didSelectPosition:thePosition];
}

@end
