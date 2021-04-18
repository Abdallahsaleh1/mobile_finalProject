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
                            Width:(NSInteger) width
                            Color:(UIColor *) color;

@end

NS_ASSUME_NONNULL_END
