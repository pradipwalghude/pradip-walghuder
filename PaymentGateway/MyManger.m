//
//  MyManger.m
//  PaymentGateway
//
//  Created by administrator on 28/06/16.
//  Copyright © 2016 Pradip Walghude. All rights reserved.
//

#import "MyManger.h"

@implementation MyManger
@synthesize productInfo;
@synthesize productPrice;
@synthesize payeeName;
@synthesize mobileNumber;
@synthesize emailID;

#pragma mark Singleton Methods

+ (id)sharedManager {
    static MyManger *sharedMyManager = nil;
    @synchronized(self) {
        if (sharedMyManager == nil)
            sharedMyManager = [[self alloc] init];
    }
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {

    }
    return self;
}
@end
