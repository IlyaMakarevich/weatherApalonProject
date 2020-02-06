//
//  CurrentForecast.h
//  MyWeatherApp
//
//  Created by Ilya Makarevich on 1/30/20.
//  Copyright © 2020 MacBook Pro . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CurrentForecast : NSObject


@property(strong, nonatomic, readonly) NSString *feelsLikeTemp;
@property(strong, nonatomic, readonly) NSString *pressure;
@property(strong, nonatomic, readonly) NSString *precipIntensity;
@property(strong, nonatomic, readonly) NSString *precipProbability;
@property(strong, nonatomic, readonly) NSString *temperature;
@property(strong, nonatomic, readonly) NSString *time;
@property(strong, nonatomic, readonly) NSString *summary;
@property(strong, nonatomic, readonly) NSString *temperatureCelsius;
@property(strong, nonatomic, readonly) NSString *windSpeed;
@property(strong, nonatomic, readonly) NSString *localTime;
@property(strong, nonatomic, readonly) NSString *visibility;
@property(strong, nonatomic, readonly) NSString *dewPoint;

-(id)initWithCurrentlyDictionary:(NSDictionary *)dictionary;
-(NSString *)fahrenheitToCelsius:(NSString *)temperature;
-(NSString *)temperatureFormatter:(NSString *)temperature;

@end
