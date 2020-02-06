//
//  ApiManager.m
//  
//
//  Created by MacBook Pro  on 03.02.2020.
//

#import "ApiManager.h"
#import "AFNetworking.h"
#import "Weather.h"
#import "WeekForecast.h"
#import "City.h"
#import "Constants.h"

@implementation ApiManager

@synthesize someProperty;

#pragma mark Singleton Methods

+ (id)sharedManager {
    static ApiManager *sharedMyManager = nil;
    @synchronized(self) {
        if (sharedMyManager == nil)
            sharedMyManager = [[self alloc] init];
    }
    return sharedMyManager;
}

- (id)init {
  if (self = [super init]) {
      someProperty = @"Default Property Value";
  }
  return self;
}

- (void) dealloc {
  // Should never be called, but just here for clarity really.
}

-(void) printSmth {
    NSLog(@"asdasdasdasdasd");
}

-(void) getWeatherForCity:(City*)city {
    NSString *lat = [[NSString alloc] initWithFormat:@"%f", city.lat];
    NSString *lng = [[NSString alloc] initWithFormat:@"%f", city.lng];
    NSString* URL = [NSString stringWithFormat:@"%@/%@/%@,%@", WEATHER_URL, WEATHER_API_KEY, lat,lng];
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    [manager GET: URL
      parameters: nil
        progress:nil success:^(NSURLSessionDataTask * task, id responseObject) {
        NSDictionary* responseDict = responseObject;



    } failure:^(NSURLSessionTask *operation, NSError *error) {

        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Error Retrieving Cities"
                                                                         message:[error localizedDescription]
                                                                  preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok"
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];

        [alertVC addAction:okAction];
    }];
}

@end
