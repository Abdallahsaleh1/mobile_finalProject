//
//  ASCar.h
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import "ASVehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASCar : ASVehicle {
    
}
@property NSInteger chairNum;
@property bool isFurnitureLeather;

- (instancetype) initWithChairNum:(NSInteger) chairNum
               ISFurnitureLeather:(bool) isFurnitureLeather
                           Length:(NSInteger) length
                            width:(NSInteger) width
                            color:(UIColor *) color
               manufactureCompany:(NSString *)manufactureCompany
                  manufactureDate:(NSDate *)manufactureDate
                           engine:(ASEngine *)engine
                         plateNum:(NSInteger)plateNum
                    bodySerialNum:(NSInteger)bodySerialNum;
@end

NS_ASSUME_NONNULL_END
