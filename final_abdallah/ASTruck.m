//
//  ASTruck.m
//  final_abdallah
//
//  Created by Student on 4/18/21.
//

#import "ASTruck.h"

@implementation ASTruck
- (instancetype) initWithFreeWeight:(double) freeWeight
                         FullWeight:(double) fullWeight
                             Length:(NSInteger) length
                              Width:(NSInteger) width
                              Color:(UIColor *) color
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
        [self setFreeWeight: freeWeight];
        [self setFullWeight: fullWeight];
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
    
    return [self initWithFreeWeight:400
                         FullWeight:750
                             Length: length
                              Width: width
                              Color: color
                 manufactureCompany: manufactureCompany
                    manufactureDate: manufactureDate
                             engine: engine
                           plateNum: plateNum
                      bodySerialNum: bodySerialNum];
}

-(instancetype) init {
    double defaultFreeWeight = 400;
    double defaultFullWeight = 750;
    NSInteger defaultLength = 230;
    NSInteger defaultWidth = 130;
    UIColor *defaultColor = nil;
    NSString *defaultManufactureCompany = @"AUDI";
    NSDate *defaultmanufactureDate = nil;
    ASEngine *defaultEngine = [[ASEngine alloc] init];
    NSInteger defaultPlateNum = 1105;
    NSInteger defaultBodySerialNum = 119118119;
    
    return [self initWithFreeWeight:defaultFreeWeight
                         FullWeight:defaultFullWeight
                             Length:defaultLength
                              Width:defaultWidth
                              Color:defaultColor
                 manufactureCompany:defaultManufactureCompany
                    manufactureDate:defaultmanufactureDate
                             engine:defaultEngine
                           plateNum:defaultPlateNum
                      bodySerialNum:defaultBodySerialNum];
}
@end
