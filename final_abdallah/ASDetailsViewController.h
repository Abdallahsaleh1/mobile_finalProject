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

@property(retain, nonatomic) id currentAutoMobile;


@property (weak, nonatomic) IBOutlet UIImageView *carImage;


@property (weak, nonatomic) IBOutlet UILabel *carName;


@end

NS_ASSUME_NONNULL_END
