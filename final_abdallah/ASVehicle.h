//
//  ASVehicle.h
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import <UIKit/UIKit.h>
#import "ASAutoMobile.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASVehicle : ASAutoMobile{
    
}
@property (assign, nonatomic) NSInteger length;
@property (assign, nonatomic) NSInteger width;
@property (assign, nonatomic) UIColor *color ;

- (instancetype) initWithLength:(NSInteger) length
                          Width:(NSInteger) width
                          Color:(UIColor *) color
             ManufactureCompany:(NSString *)manufactureCompany
                manufactureDate:(NSDate *)manufactureDate
                         engine:(ASEngine *)engine
                       plateNum:(NSInteger)plateNum
                  bodySerialNum:(NSInteger)bodySerialNum;

@end

NS_ASSUME_NONNULL_END
