//
//  WeekViewCell.m
//  MyWeatherApp
//
//  Created by Ilya Makarevich on 1/30/20.
//  Copyright © 2020 MacBook Pro . All rights reserved.
//

#import "WeekViewCell.h"
#import "WeekForecast.h"

@implementation WeekViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) configureForWeekForecast:(WeekForecast *)weekForecast {
    self.summary.text = [weekForecast summary];
    self.dayLabel.text = [self unixTimeStampToDate:weekForecast.time];
    self.minTempLabel.text =  [NSString stringWithFormat:@"Min: %@˚C",weekForecast.temperatureCelsiusMin];
    self.maxTempLabel.text = [NSString stringWithFormat:@"Max: %@˚C",weekForecast.temperatureCelsiusMax];
    self.humidityLabel.text = [NSString stringWithFormat:@"Humidity: %@%%",weekForecast.humidity];
    self.dewPointLabel.text = [NSString stringWithFormat:@"Dew point: %@ F",weekForecast.dewPoint];
    self.visibilityLabel.text = [NSString stringWithFormat:@"Visibility %@ km",weekForecast.visibility];
    self.pressureLabel.text = [NSString stringWithFormat:@"Pressure %@mb",weekForecast.pressure];
    self.sunriseLabel.text = [NSString stringWithFormat:@"Sunrise at %@",[self unixTimeStampToHHMMDate:weekForecast.sunrise]];
    self.sunsetLabel.text = [NSString stringWithFormat:@"Sunset at %@",[self unixTimeStampToHHMMDate:weekForecast.sunset]];
}

-(NSString *)unixTimeStampToDate:(NSString *)timeStamp{
    NSTimeInterval interval = [timeStamp doubleValue];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EE, MMM d"];
    return [formatter stringFromDate:date];
}

-(NSString *)unixTimeStampToHHMMDate:(NSString *)timeStamp{
    if (!timeStamp) {
        return nil;
    }
    NSTimeInterval _interval=[timeStamp doubleValue];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:_interval];
    NSDateFormatter *_formatter=[[NSDateFormatter alloc]init];
    [_formatter setDateFormat:@"HH:mm"];
    return [_formatter stringFromDate:date];
}

@end
