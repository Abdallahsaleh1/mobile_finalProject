//
//  ASimageViewController.m
//  final_abdallah
//
//  Created by Student on 4/24/21.
//

#import "ASimageViewController.h"

@interface ASimageViewController (){
    
}

@end

@implementation ASimageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.carImageView setImage:[UIImage imageNamed:[self.currentcar manufactureCompany]]];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    ASDetailsViewController *CarDetailVC = [segue destinationViewController];
    
    [CarDetailVC setCurrentcar:self.currentcar];
}


@end
