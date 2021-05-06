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
    AutoMobileArray = [NSMutableArray new];
    
     // You need to set frame or other properties and add to your view...you can either use XIB code...

    
    ASCar *car = [[ASCar alloc]initWithChairNum:5 ISFurnitureLeather:YES Length:260 width:130 color:[UIColor new] manufactureCompany:@"AUDI" manufactureDate:[NSDate new] engine:[[ASEngine alloc]init] plateNum:1105 bodySerialNum:1787444602];
    
    
    //NSLog(@"%@", [car valueForKey:@"manufactureCompany"]);
    [AutoMobileArray addObject:car];
    
    car = [[ASCar alloc]initWithChairNum:7 ISFurnitureLeather:YES Length:300 width:150 color:[UIColor new] manufactureCompany:@"Tesla" manufactureDate:[NSDate new] engine:[[ASEngine alloc]init] plateNum:7777 bodySerialNum:45547775433];
    [AutoMobileArray addObject:car];
    
    ASTruck *truck = [[ASTruck alloc]initWithFreeWeight:150 FullWeight:300 Length:400 Width:160 Color:[UIColor new] manufactureCompany:@"Volvo" manufactureDate:[NSDate new] engine:[ASEngine new] plateNum:8866 bodySerialNum:56789654345];
    [AutoMobileArray addObject:truck];
    
    ASMotorCycle *motor = [[ASMotorCycle alloc]initWithTierDiameter:17 Length:130 manufactureCompany:@"BMW" manufactureDate:[NSDate new] engine:[ASEngine new] plateNum:3322 bodySerialNum:45678932323];
    [AutoMobileArray addObject:motor];
    
    motor = [[ASMotorCycle alloc]initWithTierDiameter:16 Length:150 manufactureCompany:@"TOYOTA" manufactureDate:[NSDate new] engine:[ASEngine new] plateNum:1132 bodySerialNum:456789553323];
    [AutoMobileArray addObject:motor];
    
    
    
    
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




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController]
    ASDetailsViewController *carVC = [segue destinationViewController];
    
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    // Pass the selected object to the new view controller.
    [carVC setCurrentAutoMobile:[AutoMobileArray objectAtIndex:selectedIndexPath.row]];
}



@end
