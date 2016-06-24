//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"
#import "FISStudent.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FISStudent *mike = [[FISStudent alloc] initWithName:@"Mike"];
    FISStudent *madina = [[FISStudent alloc] initWithName:@"Madina"];
    FISStudent *elli = [[FISStudent alloc] initWithName:@"Elli"];
    FISStudent *kenneth = [[FISStudent alloc] initWithName:@"Kenneth"];
    
    mike.favoriteThings = @[@"Videogames", @"Hockey", @"Soccer", @"Running", @"Bread", @"Doctor Who", @"Books"];
    madina.favoriteThings = @[@"Tea", @"Children", @"Chocolate", @"Donuts", @"Smiles", @"Ice cream"];
    elli.favoriteThings = @[@"Pickles", @"Theater", @"Coding", @"Art"];
    kenneth.favoriteThings = @[@"Education", @"Apple", @"Pizza", @"Teaching", @"Beer"];
    self.students = @[mike, madina, elli, kenneth];
    //self.students = @[mike, madina];
    
    
    mike.favoriteFood = @"Bread";
    mike.favoriteGame = @"Werewolf";
    mike.favoriteColor = @"Orange";
    mike.favoriteMusicalArtist = @"ABGT";
    
    madina.favoriteFood = @"Chocolate";
    madina.favoriteGame = @"Blackjack";
    madina.favoriteColor = @"Green";
    madina.favoriteMusicalArtist = @"Wagner";
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return (NSInteger)self.students.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    FISStudent *currentStudent = self.students[(NSUInteger)section];
    return currentStudent.name;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    FISStudent *currentStudent = self.students[(NSUInteger)section];
    return (NSInteger)currentStudent.favoriteThings.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell" forIndexPath:indexPath];
    FISStudent *currentStudent = self.students[(NSUInteger)indexPath.section];
    NSString *currentFavoriteThing = currentStudent.favoriteThings[(NSUInteger)indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", currentFavoriteThing];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row];
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
