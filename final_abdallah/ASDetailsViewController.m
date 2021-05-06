//
//  ASDetailsViewController.m
//  final_abdallah
//
//  Created by Student on 4/24/21.
//

#import "ASDetailsViewController.h"

@interface ASDetailsViewController () <UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *carKeysArray;
    NSMutableArray *truckKeysArray;
    NSMutableArray *motorKeysArray;
}

@end

@implementation ASDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    carKeysArray = [NSMutableArray arrayWithObjects:@"chairNum",@"isFurnitureLeather",@"length",@"width",@"manufactureCompany",@"manufactureDate",@"plateNum",@"bodySerialNum", nil];
    
    truckKeysArray = [NSMutableArray arrayWithObjects:@"freeWeight",@"fullWeight",@"length",@"width",@"manufactureCompany",@"manufactureDate",@"plateNum",@"bodySerialNum", nil];
    
    
    motorKeysArray = [NSMutableArray arrayWithObjects:@"tierDiameter",@"length",@"manufactureCompany",@"manufactureDate",@"plateNum",@"bodySerialNum", nil];
    
    [self.carImage setImage:[UIImage imageNamed:[self.currentAutoMobile manufactureCompany]]];
    [self.carName setText:[self.currentAutoMobile manufactureCompany]];
    
    [self.AutoMobileTable setDelegate:self];
    [self.AutoMobileTable setDataSource:self];
    
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
    else {
        return 1;
        
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
   

    // Configure the cell...
    if ([self.currentAutoMobile isKindOfClass:[ASCar class]]){
        NSString *casting= [NSString stringWithFormat:@"%@",[self.currentAutoMobile valueForKey:[carKeysArray objectAtIndex:indexPath.row]]];
        NSString *label = [carKeysArray objectAtIndex:indexPath.row];
        NSString *spacer = [label stringByAppendingString:@": "];
        casting = [spacer stringByAppendingString: casting];
        cell.textLabel.text= casting;
        
    } else if([self.currentAutoMobile isKindOfClass:[ASTruck class]]){
        NSString *casting= [NSString stringWithFormat:@"%@",[self.currentAutoMobile valueForKey:[truckKeysArray objectAtIndex:indexPath.row]]];
        NSString *label = [truckKeysArray objectAtIndex:indexPath.row];
        NSString *spacer = [label stringByAppendingString:@": "];
        casting = [spacer stringByAppendingString: casting];
        cell.textLabel.text= casting;
        

    } else if([self.currentAutoMobile isKindOfClass:[ASMotorCycle class]]){
        NSString *casting= [NSString stringWithFormat:@"%@",[self.currentAutoMobile valueForKey:[motorKeysArray objectAtIndex:indexPath.row]]];
        NSString *label = [motorKeysArray objectAtIndex:indexPath.row];
        NSString *spacer = [label stringByAppendingString:@": "];
        casting = [spacer stringByAppendingString: casting];
        cell.textLabel.text= casting;

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
