//
//  ASEngine.h
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import <Foundation/Foundation.h>
#import "FuelType.h"
NS_ASSUME_NONNULL_BEGIN

@interface ASEngine : NSObject {
    
}
@property (nonatomic, copy)     NSString *manufacture;
@property (nonatomic, retain)   NSDate *manufactureDate;
@property (nonatomic, copy)     NSString *model;
@property (nonatomic, assign)   NSInteger cylinder;
@property (nonatomic, assign)   fuelType *fueltype;

- (instancetype)initWithManufacture: (NSString *)manufacture
                    ManufactureDate: (NSDate *) manufactureDate
                              Model: (NSString *) model
                           Cylinder: (NSInteger) cylinder
                           FuelType: (fuelType *)fueltype;

@end

NS_ASSUME_NONNULL_END
