//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISStudent *ken = [FISStudent new];
    ken.favoriteThings = @[@"Coheed", @"Lost", @"Annie Dillard"];
    ken.name = @"Ken";
    FISStudent *annie = [FISStudent new];
    annie.favoriteThings = @[@"Patti Page", @"Thereau", @"Leaves", @"Hmm"];
    annie.name = @"Annie";
    FISStudent *claudio = [FISStudent new];
    claudio.favoriteThings = @[@"Pink Floyd", @"Battlestar", @"Frank Miller", @"Stan Lee"];
    claudio.name = @"Claudio";
    
    
    self.students = @[ken, annie, claudio];
    
    NSLog(@"%@", self.students);
    
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return (NSInteger)self.students.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    FISStudent *currentStudent = self.students[(NSUInteger)section];
    
    NSInteger numberOfCells = (NSInteger)currentStudent.favoriteThings.count;
    
    return numberOfCells;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    
    FISStudent *currentStudent = self.students[(NSUInteger)indexPath.section];
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", currentStudent.favoriteThings[(NSUInteger)indexPath.row]] ;
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%li",indexPath.row + 1];
    
    cell.indentationLevel = 2;
    
 
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    FISStudent *currentStudent = self.students[(NSUInteger)section];
    
    return currentStudent.name;
    
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
