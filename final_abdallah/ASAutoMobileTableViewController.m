//
//  ASAutoMobileTableViewController.m
//  final_abdallah
//
//  Created by Student on 4/28/21.
//

#import "ASAutoMobileTableViewController.h"

@interface ASAutoMobileTableViewController (){
    NSMutableArray * AutoMobileArray;
   
}

@end

@implementation ASAutoMobileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CarArray = [NSMutableArray new];
    AutoMobileArray = [NSMutableArray new];
    //MotorCycleArray = [NSMutableArray new];

    
    ASCar *car = [[ASCar alloc]initWithChairNum:5 ISFurnitureLeather:YES Length:260 width:130 color:[UIColor new] manufactureCompany:@"AUDI" manufactureDate:[NSDate new] engine:[[ASEngine alloc]init] plateNum:1105 bodySerialNum:1787444602];
    
    [AutoMobileArray addObject:car];
    
    car = [[ASCar alloc]initWithChairNum:7 ISFurnitureLeather:YES Length:300 width:150 color:[UIColor new] manufactureCompany:@"Tesla" manufactureDate:[NSDate new] engine:[[ASEngine alloc]init] plateNum:7777 bodySerialNum:45547775433];
    [AutoMobileArray addObject:car];
    
    ASTruck *truck = [[ASTruck alloc]initWithFreeWeight:150 FullWeight:300 Length:400 Width:160 Color:[UIColor new] manufactureCompany:@"Volvo" manufactureDate:[NSDate new] engine:[ASEngine new] plateNum:8866 bodySerialNum:56789654345];
    [AutoMobileArray addObject:truck];
    
    ASMotorCycle *motor = [[ASMotorCycle alloc]initWithTierDiameter:17 Length:130 manufactureCompany:@"BMW" manufactureDate:[NSDate new] engine:[ASEngine new] plateNum:3322 bodySerialNum:45678932323];
    [AutoMobileArray addObject:motor];
    
    motor = [[ASMotorCycle alloc]initWithTierDiameter:16 Length:150 manufactureCompany:@"TOYOTA" manufactureDate:[NSDate new] engine:[ASEngine new] plateNum:1132 bodySerialNum:456789553323];
    [AutoMobileArray addObject:motor];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return AutoMobileArray.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text= [AutoMobileArray[indexPath.row] manufactureCompany];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController]
    ASimageViewController *carVC = [segue destinationViewController];
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    // Pass the selected object to the new view controller.
    [carVC setCurrentcar:[AutoMobileArray objectAtIndex:selectedIndexPath.row]];
}


@end
