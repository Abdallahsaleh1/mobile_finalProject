//
//  ASimageViewController.h
//  final_abdallah
//
//  Created by Student on 4/24/21.
//

#import <UIKit/UIKit.h>
#import "ASCar.h"
#import "ASTruck.h"
#import "ASMotorCycle.h"
#import "ASDetailsViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface ASimageViewController : UIViewController
@property(retain, nonatomic) id currentcar;

@property (weak, nonatomic) IBOutlet UIImageView *carImageView;


@end

NS_ASSUME_NONNULL_END
