//
//  CommonMethods.m
//  Messengizer
//
//  Created by Noah Tatum on 4/19/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "CommonMethods.h"

@implementation CommonMethods

+ (NSData *)encodeImageTo64:(UIImage *)imageToEncode {
    NSData *encodedImage = UIImagePNGRepresentation(imageToEncode);
    return encodedImage;
}

@end
