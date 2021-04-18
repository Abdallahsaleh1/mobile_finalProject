//
//  ASAutoMobile.h
//  final_abdallah
//
//  Created by Student on 4/17/21.
//

#import <Foundation/Foundation.h>
#import "ASEngine.h"
#import "GearType.h"
NS_ASSUME_NONNULL_BEGIN

@interface ASAutoMobile : NSObject {
    
}
@property (nonatomic, copy)      NSString *manufactureCompany;
@property (nonatomic, retain)    NSDate *manufactureDate;
@property (nonatomic, retain)    ASEngine *engine;
@property (nonatomic, assign)    NSInteger plateNum;
@property (nonatomic, assign)    NSInteger bodySerialNum;

- (instancetype)initWithManufactureCompany:(NSString *)manufactureCompany
                  manufactureDate:(NSDate *)manufactureDate
                           engine:(ASEngine *)engine
                         plateNum:(NSInteger)plateNum
                    bodySerialNum:(NSInteger)bodySerialNum;
@end

NS_ASSUME_NONNULL_END
