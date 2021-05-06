//
//  ASMotorCycle.m
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import "ASMotorCycle.h"

@implementation ASMotorCycle
- (instancetype) initWithTierDiameter:(double) tierDiameter
                               Length:(double) length
                   manufactureCompany:(NSString *)manufactureCompany
                      manufactureDate:(NSDate *)manufactureDate
                               engine:(ASEngine *)engine
                             plateNum:(NSInteger)plateNum
                        bodySerialNum:(NSInteger)bodySerialNum{
    self = [super initWithManufactureCompany:manufactureCompany manufactureDate:manufactureDate engine:engine plateNum:plateNum bodySerialNum:bodySerialNum];
    if (self) {
        [self setTierDiameter: tierDiameter];
        [self setLength: length];
        
      
        
    }
    return self;
}

- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany
                  manufactureDate:(NSDate *)manufactureDate
                           engine:(ASEngine *)engine
                         plateNum:(NSInteger)plateNum
                             bodySerialNum:(NSInteger)bodySerialNum {
    return [self initWithTierDiameter:12
                               Length:130
                  manufactureCompany :manufactureCompany
                      manufactureDate:manufactureDate
                               engine:engine
                             plateNum:plateNum
                        bodySerialNum:bodySerialNum];
}

-(instancetype) init {
    NSInteger defaultTierDiameter = 12;
    NSInteger defaultLength = 130;
    NSString *defaultManufactureCompany = @"AUDI";
    NSDate *defaultmanufactureDate = [NSDate new];
    ASEngine *defaultEngine = [[ASEngine alloc] init];
    NSInteger defaultPlateNum = 1105;
    NSInteger defaultBodySerialNum = 119118119;
    
    return [self initWithTierDiameter:defaultTierDiameter
                               Length:defaultLength
                  manufactureCompany :defaultManufactureCompany
                      manufactureDate:defaultmanufactureDate
                               engine:defaultEngine
                             plateNum:defaultPlateNum
                        bodySerialNum:defaultBodySerialNum];
}

@end
