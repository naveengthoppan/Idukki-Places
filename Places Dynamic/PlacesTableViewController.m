//
//  PlacesTableViewController.m
//  Places Dynamic
//
//  Created by qbuser on 1/20/15.
//  Copyright (c) 2015 qbuser. All rights reserved.
//

#import "PlacesTableViewController.h"
#import "PlacesCellTableViewCell.h"


@interface PlacesTableViewController ()
{
    NSMutableArray *places;
    NSMutableArray *thumbnails;
    NSMutableArray *ratings;
    
    
}

@end

@implementation PlacesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    places = [NSMutableArray arrayWithObjects:@"Munnar",@"Thekkady",@"Idukki",@"Marayoor",@"Kanthalloor",@"Chinnar", nil];
    thumbnails = [NSMutableArray arrayWithObjects:@"munnar.jpg",@"thekkady.jpg",@"idukki.jpg",@"marayoor.jpg",@"kanthalloor.jpg",@"chinnar.jpg", nil];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [places count];
}


- (PlacesCellTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PlacesCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlacesCell" forIndexPath:indexPath];
    cell.placesLabel.text=[places objectAtIndex:indexPath.row];
    cell.thumbnailview.image=[UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
     
    
    
        
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
