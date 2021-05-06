//
//  AddViewController.m
//  final_abdallah
//
//  Created by Student on 5/6/21.
//

#import "AddViewController.h"

@interface AddViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>{
    
    
    __weak IBOutlet UIPickerView *TypePicker;
}

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    TypePicker.delegate = self;
    TypePicker.dataSource = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - UIPicker
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
     return 1;  // Or return whatever as you intend
}
- (NSInteger)pickerView:(UIPickerView *)thePickerView
numberOfRowsInComponent:(NSInteger)component {
     return 3;//Or, return as suitable for you...normally we use array for dynamic
}
- (NSString *)pickerView:(UIPickerView *)thePickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSArray *AutoMobileNames = [NSArray arrayWithObjects:@"Car",@"Truck",@"MotorCycle", nil];
     return [AutoMobileNames objectAtIndex:row];//Or, your suitable title; like Choice-a, etc.
}


@end
