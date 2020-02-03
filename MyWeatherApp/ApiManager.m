//
//  ApiManager.m
//  
//
//  Created by MacBook Pro  on 03.02.2020.
//

#import "ApiManager.h"

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

@end
