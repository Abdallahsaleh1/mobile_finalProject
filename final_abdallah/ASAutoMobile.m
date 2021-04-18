//
//  ASAutoMobile.m
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import "ASAutoMobile.h"

@implementation ASAutoMobile
- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany
                  manufactureDate:(NSDate *)manufactureDate
                           engine:(ASEngine *)engine
                         plateNum:(NSInteger)plateNum
                             bodySerialNum:(NSInteger)bodySerialNum {
    self = [super init];
    if (self) {
        [self setManufactureCompany:manufactureCompany];
        [self setManufactureDate:manufactureDate];
        [self setEngine:engine];
        [self setPlateNum:plateNum];
        [self setBodySerialNum:bodySerialNum];
        
    }
    return self;
}
-(instancetype) init {
    NSString *defaultManufactureCompany = @"AUDI";
    NSDate *defaultmanufactureDate = nil;
    ASEngine *defaultEngine = [[ASEngine alloc] init];
    NSInteger defaultPlateNum = 1105;
    NSInteger defaultBodySerialNum = 119118119;
    
    return [self initWithManufactureCompany :defaultManufactureCompany          manufactureDate:defaultmanufactureDate
                                      engine:defaultEngine
                                    plateNum:defaultPlateNum
                               bodySerialNum:defaultBodySerialNum];
}

@end
