//
//  ViewController.m
//  Rest
//
//  Created by Graeme Littlewood on 18/11/2013.
//  Copyright (c) 2013 Graeme Littlewood. All rights reserved.
//

#import "Banner.h"
#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:[NSURL URLWithString:@"http://api.drivebenfield.com"]];
    [manager.requestSerializer setAuthorizationHeaderFieldWithUsername:@"ios" password:@"add150nm0t0r5"];
    
    [manager GET:@"banners" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //Banner *banner = [[Banner alloc] initWithDictionary:[responseObject objectAtIndex:0] error:nil];
        Banner *banner = [MTLJSONAdapter modelOfClass:[Banner class] fromJSONDictionary:[responseObject objectAtIndex:0] error:nil];
        
        NSLog(@"banner: %@", banner);
        NSLog(@"banner image: %@", banner.image);
        
        NSDictionary *bannerDictionary = [MTLJSONAdapter JSONDictionaryFromModel:banner];
        NSLog(@"bannerDictionary: %@", bannerDictionary);
        NSLog(@"bannerDictionary url: %@", [bannerDictionary objectForKey:@"url"]);
        
        //load from file
        //NSDictionary* object = [NSDictionary dictionaryWithContentsOfFile:filePath];
        
        //initialize model with data
        //data = [[MyDataModel alloc] initWithDictionary: object];
        
        //save to disc
        //[[data toDictionary] writeToFile:filePath atomically:YES];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    /*
    [manager GET:@"used-vehicles/search" parameters:@{@"make":@"volkswagen", @"model":@"polo", @"colour":@"silver"} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    */
}

@end