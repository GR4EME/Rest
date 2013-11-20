//
//  Banner.h
//  Rest
//
//  Created by Graeme Littlewood on 18/11/2013.
//  Copyright (c) 2013 Graeme Littlewood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface Banner : MTLModel <MTLJSONSerializing>
    
@property (nonatomic, strong) NSNumber *identifier;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSNumber *position;

@end