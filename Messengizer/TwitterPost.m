//
//  TwitterPost.m
//  Messengizer
//
//  Created by Noah Tatum on 4/15/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "TwitterPost.h"

@implementation TwitterPost

+ (NSString *)encodeImageTo64:(UIImage *)imageToEncode {
    NSString *encodedImage = [UIImagePNGRepresentation(imageToEncode)
                              base64EncodedStringWithOptions:NSDataBase64EncodingEndLineWithCarriageReturn];
    return encodedImage;
}

+ (void)twitterPostMessage:(NSString *)postMessage {
    
    NSString *testPostEndpoint = @"https://api.twitter.com/1.1/statuses/update.json";
    NSDictionary *params = @{@"status" : postMessage};
    NSError *clientError;
    NSURLRequest *request = [[[Twitter sharedInstance] APIClient]
                             URLRequestWithMethod:@"POST"
                             URL:testPostEndpoint
                             parameters:params
                             error:&clientError];
    
    if (request) {
        [[[Twitter sharedInstance] APIClient]
         sendTwitterRequest:request
         completion:^(NSURLResponse *response,
                      NSData *data,
                      NSError *connectionError) {
             if (data) {
                 // handle the response data e.g.
                 NSError *jsonError;
                 NSDictionary *json = [NSJSONSerialization
                                       JSONObjectWithData:data
                                       options:0
                                       error:&jsonError];
                 NSLog(@"%@", json);
             }
             else {
                 NSLog(@"Error: %@", connectionError);
             }
         }];
    }
    else {
        NSLog(@"Error: %@", clientError);
    }
}

+ (NSString *)twitterUploadImage:(UIImage *)imageToUpload {
    
    __block NSString *returningJSON;
    
    NSString *encodedImage = [self encodeImageTo64:imageToUpload];
    
    NSString *testPostEndpoint = @"https://upload.twitter.com/1.1/media/upload.json";
    NSDictionary *params = @{@"media" : encodedImage};
    NSError *clientError;
    NSURLRequest *request = [[[Twitter sharedInstance] APIClient]
                             URLRequestWithMethod:@"POST"
                             URL:testPostEndpoint
                             parameters:params
                             error:&clientError];
    
        [[[Twitter sharedInstance] APIClient]
         sendTwitterRequest:request
         completion:^(NSURLResponse *response,
                      NSData *data,
                      NSError *connectionError) {
             
                 NSError *jsonError;
                 NSDictionary *json = [NSJSONSerialization
                                       JSONObjectWithData:data
                                       options:0
                                       error:&jsonError];
             returningJSON = json[@"media_id"];
                 NSLog(@"%@", json[@"media_id"]);

                 NSLog(@"Error: %@", connectionError);
         }];
        NSLog(@"Error: %@", clientError);
    return returningJSON;
}

+ (void)twitterPostMessageWithImage:(NSString *)postMessage {
    
    //UIImage *testImage = MainViewController.imageView.image;
    
    NSString *testPostEndpoint = @"https://api.twitter.com/1.1/statuses/update.json";
    NSDictionary *params = @{@"status" : postMessage};
    NSError *clientError;
    NSURLRequest *request = [[[Twitter sharedInstance] APIClient]
                             URLRequestWithMethod:@"POST"
                             URL:testPostEndpoint
                             parameters:params
                             error:&clientError];
    
    if (request) {
        [[[Twitter sharedInstance] APIClient]
         sendTwitterRequest:request
         completion:^(NSURLResponse *response,
                      NSData *data,
                      NSError *connectionError) {
             if (data) {
                 // handle the response data e.g.
                 NSError *jsonError;
                 NSDictionary *json = [NSJSONSerialization
                                       JSONObjectWithData:data
                                       options:0
                                       error:&jsonError];
                 NSLog(@"%@", json);
             }
             else {
                 NSLog(@"Error: %@", connectionError);
             }
         }];
    }
    else {
        NSLog(@"Error: %@", clientError);
    }
}

@end
