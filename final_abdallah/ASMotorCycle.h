//
//  ASMotorCycle.h
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import "ASAutoMobile.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASMotorCycle : ASAutoMobile {
    
}
@property (assign, nonatomic) double tierDiameter;
@property (assign, nonatomic) double length;

- (instancetype) initWithTierDiameter:(double) tierDiameter
                               Length:(double) length
                   ManufactureCompany:(NSString *)manufactureCompany
                      manufactureDate:(NSDate *)manufactureDate
                               engine:(ASEngine *)engine
                             plateNum:(NSInteger)plateNum
                             gearType:(gearType *)gearType
                        bodySerialNum:(NSInteger)bodySerialNum;
                          

@end

NS_ASSUME_NONNULL_END
