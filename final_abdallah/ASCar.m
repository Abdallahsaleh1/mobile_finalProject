//
//  ASCar.m
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import "ASCar.h"

@implementation ASCar

- (instancetype) initWithChairNum:(NSInteger) chairNum
               ISFurnitureLeather:(bool) isFurnitureLeather
                           Length:(NSInteger) length
                            width:(NSInteger) width
                            color:(UIColor *) color
               manufactureCompany:(NSString *)manufactureCompany
                  manufactureDate:(NSDate *)manufactureDate
                           engine:(ASEngine *)engine
                         plateNum:(NSInteger)plateNum
                    bodySerialNum:(NSInteger)bodySerialNum{
    
    self = [super initWithLength: length
                           Width: width
                           Color: color
              manufactureCompany: manufactureCompany
                 manufactureDate: manufactureDate
                          engine: engine
                        plateNum: plateNum
                   bodySerialNum: bodySerialNum];
    if (self) {
        [self setChairNum: chairNum];
        [self setIsFurnitureLeather: isFurnitureLeather];
    }
    return self;
}

- (instancetype) initWithLength:(NSInteger) length
                          width:(NSInteger) width
                          color:(UIColor *) color
             manufactureCompany:(NSString *)manufactureCompany
                manufactureDate:(NSDate *)manufactureDate
                         engine:(ASEngine *)engine
                       plateNum:(NSInteger)plateNum
                  bodySerialNum:(NSInteger)bodySerialNum{
    
    return [self initWithChairNum: 5
               ISFurnitureLeather: YES
                           Length: length
                            width: width
                            color: color
               manufactureCompany: manufactureCompany
                  manufactureDate: manufactureDate
                           engine: engine
                         plateNum: plateNum
                    bodySerialNum: bodySerialNum];
}

-(instancetype) init {
    NSInteger defaultChairNum = 5;
    BOOL defaultIsFurnitureLeather = NO;
    NSInteger defaultLength = 230;
    NSInteger defaultWidth = 130;
    UIColor *defaultColor = [UIColor new];
    NSString *defaultManufactureCompany = @"AUDI";
    NSDate *defaultmanufactureDate = [NSDate new];
    ASEngine *defaultEngine = [[ASEngine alloc] init];
    NSInteger defaultPlateNum = 1105;
    NSInteger defaultBodySerialNum = 119118119;
    
    return [self initWithChairNum: defaultChairNum
               ISFurnitureLeather: defaultIsFurnitureLeather
                           Length: defaultLength
                            width: defaultWidth
                            color: defaultColor
               manufactureCompany: defaultManufactureCompany
                  manufactureDate: defaultmanufactureDate
                           engine: defaultEngine
                         plateNum: defaultPlateNum
                    bodySerialNum: defaultBodySerialNum];
}

@end
