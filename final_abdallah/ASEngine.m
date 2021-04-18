//
//  ASEngine.m
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import "ASEngine.h"

@implementation ASEngine
- (instancetype)initWithManufacture: (NSString *)manufacture
                    ManufactureDate: (NSDate *) manufactureDate
                              Model: (NSString *) model
                           Cylinder: (NSInteger) cylinder
                           {
    self = [super init];
    if (self) {
        [self setManufacture:manufacture];
        [self setManufactureDate:manufactureDate];
        [self setModel:model];
        [self setCylinder:cylinder];
        [self setCylinder:cylinder];
        
        
    }
    return self;
}

-(instancetype) init {
    NSString *defaultManufacture = @"AUDI";
    NSDate *defaultmanufactureDate = nil;
    NSString *defaultModel = @"model s";
    NSInteger defaultCylinder = 4;
    
   
    
    return [self initWithManufacture :defaultManufacture
                      ManufactureDate:defaultmanufactureDate
                                Model:defaultModel
                             Cylinder:defaultCylinder];
}
@end
