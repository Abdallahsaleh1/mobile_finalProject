//
//  ASDetailsViewController.h
//  final_abdallah
//
//  Created by Student on 4/24/21.
//

#import <UIKit/UIKit.h>

#import "ASCar.h"
#import "ASMotorCycle.h"
#import "ASTruck.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASDetailsViewController : UIViewController

@property (weak, nonatomic) id currentcar;
@property (weak, nonatomic) IBOutlet UILabel *carDetailsLabel;


@end

NS_ASSUME_NONNULL_END
