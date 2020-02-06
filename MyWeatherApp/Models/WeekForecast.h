//
//  WeekForecast.h
//  MyWeatherApp
//
//  Created by Ilya Makarevich on 1/30/20.
//  Copyright © 2020 MacBook Pro . All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeekForecast : NSObject

@property(strong, nonatomic, readonly) NSString *temperatureMax;
@property(strong, nonatomic, readonly) NSString *temperatureMin;
@property(strong, nonatomic, readonly) NSString *humidity;
@property(strong, nonatomic, readonly) NSString *dewPoint;
@property(strong, nonatomic, readonly) NSString *visibility;
@property(strong, nonatomic, readonly) NSString *pressure;
@property(strong, nonatomic, readonly) NSString *windBearing;
@property(strong, nonatomic, readonly) NSString *time;
@property(strong, nonatomic, readonly) NSString *summary;
@property(strong, nonatomic, readonly) NSString *temperatureCelsiusMax;
@property(strong, nonatomic, readonly) NSString *temperatureCelsiusMin;
@property(strong, nonatomic, readonly) NSString *sunrise;
@property(strong, nonatomic, readonly) NSString *sunset;

-(id)initWithDailyDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
