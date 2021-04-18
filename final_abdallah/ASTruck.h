//
//  ASTruck.h
//  final_abdallah
//
//  Created by Student on 4/18/21.
//

#import "ASVehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASTruck : ASVehicle {
    
}
@property double freeWeight;
@property double fullWeight;

- (instancetype) initWithFreeWeight:(double) freeWeight
                         FullWeight:(double) fullWeight
                             Length:(NSInteger) length
                              Width:(NSInteger) width
                              Color:(UIColor *) color;

@end

NS_ASSUME_NONNULL_END
