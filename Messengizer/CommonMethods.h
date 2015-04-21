//
//  CommonMethods.h
//  Messengizer
//
//  Created by Noah Tatum on 4/19/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TwitterKit/TwitterKit.h>

@interface CommonMethods : NSObject

+ (NSData *)encodeImageTo64:(UIImage *)imageToEncode;

@end
