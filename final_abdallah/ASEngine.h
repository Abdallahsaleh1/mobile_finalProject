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


- (instancetype)initWithManufacture: (NSString *)manufacture
                    ManufactureDate: (NSDate *) manufactureDate
                              Model: (NSString *) model
                           Cylinder: (NSInteger) cylinder;
                           

@end

NS_ASSUME_NONNULL_END
