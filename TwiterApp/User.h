//
//  User.h
//  Twitter
//
//  Created by Fábio Moreira on 6/22/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Mantle.h"
#import "MTLModel.h"
#import "MTLJSONAdapter.h"

@interface User : MTLModel<MTLJSONSerializing>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *nickName;
@property (nonatomic, strong) NSString *bios;
@property (nonatomic, strong) UIImage * profileImage;

+ (NSDictionary *)JSONKeyPathsByPropertyKey ;

-(id)initWithDictionary:(NSDictionary *)dictionary error:(NSError **)error;

@end
