//
//  User.m
//  Twitter
//
//  Created by Fábio Moreira on 6/22/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import "User.h"

@implementation User

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"name": @"name",
             @"nickName": @"nickName",
             @"bios": @"bios"
             };
}

-(id)initWithDictionary:(NSDictionary *)dictionary error:(NSError **)error {
    self = [super initWithDictionary:dictionary error:error];
    if(self){
    }
    return self;
}

@end
