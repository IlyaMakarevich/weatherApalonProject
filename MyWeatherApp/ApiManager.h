//
//  ApiManager.h
//  
//
//  Created by MacBook Pro  on 03.02.2020.
//

#import <Foundation/Foundation.h>
#import "City.h"

NS_ASSUME_NONNULL_BEGIN

@interface ApiManager : NSObject {
    NSString *someProperty;
}

@property (nonatomic, retain) NSString *someProperty;

+(id) sharedManager;
-(void) getWeatherForCity:(City*)city;

@end

NS_ASSUME_NONNULL_END
