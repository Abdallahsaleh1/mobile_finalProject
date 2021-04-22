//
//  ASVehicle.m
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import "ASVehicle.h"

@implementation ASVehicle
- (instancetype) initWithLength:(NSInteger) length
                          width:(NSInteger) width
                          color:(UIColor *) color
             manufactureCompany:(NSString *)manufactureCompany
                manufactureDate:(NSDate *)manufactureDate
                         engine:(ASEngine *)engine
                       plateNum:(NSInteger)plateNum
                  bodySerialNum:(NSInteger)bodySerialNum{
    
    self = [super initWithManufactureCompany:manufactureCompany manufactureDate:manufactureDate engine:engine plateNum:plateNum bodySerialNum:bodySerialNum];
    if (self) {
        [self setLength: length];
        [self setWidth: width];
        [self setColor: color];
      
        
    }
    return self;
}

- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany
                  manufactureDate:(NSDate *)manufactureDate
                           engine:(ASEngine *)engine
                         plateNum:(NSInteger)plateNum
                             bodySerialNum:(NSInteger)bodySerialNum {
    return [self initWithLength:250
                          width:130
                          color:nil
            manufactureCompany :manufactureCompany
                manufactureDate:manufactureDate
                         engine:engine
                       plateNum:plateNum
                  bodySerialNum:bodySerialNum];
}
-(instancetype) init {
    NSInteger defaultLength = 230;
    NSInteger defaultWidth = 130;
    UIColor *defaultColor = nil;
    NSString *defaultManufactureCompany = @"AUDI";
    NSDate *defaultmanufactureDate = nil;
    ASEngine *defaultEngine = [[ASEngine alloc] init];
    NSInteger defaultPlateNum = 1105;
    NSInteger defaultBodySerialNum = 119118119;
    
    return [self initWithLength:defaultLength width:defaultWidth color:defaultColor manufactureCompany:defaultManufactureCompany manufactureDate:defaultmanufactureDate engine:defaultEngine plateNum:defaultPlateNum bodySerialNum:defaultBodySerialNum];
}
    
@end
