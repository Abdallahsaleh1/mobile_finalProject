//
//  ASDetailsViewController.m
//  final_abdallah
//
//  Created by Student on 4/24/21.
//

#import "ASDetailsViewController.h"

@interface ASDetailsViewController () <UITableViewDelegate>{
    NSArray *carKeysArray;
    NSArray *truckKeysArray;
    NSArray *motorKeysArray;
}

@end

@implementation ASDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    carKeysArray = [NSMutableArray new];
    truckKeysArray = [NSMutableArray new];
    motorKeysArray = [NSMutableArray new];
    // Do any additional setup after loading the view.
    carKeysArray = [NSArray arrayWithObjects:@"chairNum",@"iSFurnitureLeather",@"length",@"width",@"color",@"manufactureCompany",@"manufactureDate",@"engine",@"plateNum",@"bodySerialNum", nil];
    
    truckKeysArray = [NSArray arrayWithObjects:@"freeWeight",@"fullWeight",@"length",@"width",@"color",@"manufactureCompany",@"manufactureDate",@"engine",@"plateNum",@"bodySerialNum", nil];
    
    motorKeysArray = [NSArray arrayWithObjects:@"tierDiameter",@"length",@"width",@"color",@"manufactureCompany",@"manufactureDate",@"engine",@"plateNum",@"bodySerialNum", nil];
    
    [self.carImage setImage:[UIImage imageNamed:[self.currentAutoMobile manufactureCompany]]];
    [self.carName setText:[self.currentAutoMobile manufactureCompany]];
    
    
    
    
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if([self.currentAutoMobile isKindOfClass:[ASCar class]]) {
        return carKeysArray.count;
        
    } else if([self.currentAutoMobile isKindOfClass:[ASTruck class]]) {
        return truckKeysArray.count;
        
    } else if([self.currentAutoMobile isKindOfClass:[ASMotorCycle class]]) {
        return motorKeysArray.count;
        
    }
    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    if ([self.currentAutoMobile isKindOfClass:[ASCar class]]){
        cell.textLabel.text= [self.currentAutoMobile valueForKey:[carKeysArray objectAtIndex:indexPath.row]];
        
        
    } else if([self.currentAutoMobile isKindOfClass:[ASTruck class]]){
        cell.textLabel.text= [self.currentAutoMobile valueForKey:[truckKeysArray objectAtIndex:indexPath.row]];

        
    } else if([self.currentAutoMobile isKindOfClass:[ASMotorCycle class]]){
        cell.textLabel.text= [self.currentAutoMobile valueForKey:[motorKeysArray objectAtIndex:indexPath.row]];
        
    }

    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
