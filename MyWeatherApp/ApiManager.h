//
//  ApiManager.h
//  
//
//  Created by MacBook Pro  on 03.02.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ApiManager : NSObject {
    NSString *someProperty;
}

@property (nonatomic, retain) NSString *someProperty;

+(id) sharedManager;

@end

NS_ASSUME_NONNULL_END
