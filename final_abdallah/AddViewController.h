//
//  AddViewController.h
//  final_abdallah
//
//  Created by Student on 5/6/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *CompanyTextField;
@property (weak, nonatomic) IBOutlet UITextField *PlateNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *SerialNumTextField;
@property (weak, nonatomic) IBOutlet UITextField *WidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *LengthTextField;
@property (weak, nonatomic) IBOutlet UITextField *TierDiameterTextField;

@end

NS_ASSUME_NONNULL_END
