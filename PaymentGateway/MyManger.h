//
//  MyManger.h
//  PaymentGateway
//
//  Created by administrator on 28/06/16.
//  Copyright © 2016 Pradip Walghude. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyManger : NSObject{
    NSString *someProperty;
}
@property (nonatomic, retain) NSString *productInfo;
@property (nonatomic, retain) NSString *amountPaid;
@property (nonatomic, retain) NSString *payeeName;
@property (nonatomic, retain) NSString *productPrice;
@property (nonatomic, retain) NSString *emailID;
@property (nonatomic,retain) NSString *mobileNumber;




+ (id)sharedManager;

@end
