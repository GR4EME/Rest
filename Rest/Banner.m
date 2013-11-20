//
//  Banner.m
//  Rest
//
//  Created by Graeme Littlewood on 18/11/2013.
//  Copyright (c) 2013 Graeme Littlewood. All rights reserved.
//

#import "Banner.h"

@implementation Banner

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"identifier": @"id",
             @"image": @"image",
             @"url": @"url",
             @"position": @"position"
             };
}

+ (NSValueTransformer *)urlTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}
    
@end
