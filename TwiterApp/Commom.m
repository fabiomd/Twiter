//
//  Commom.m
//  Twitter
//
//  Created by Fábio Moreira on 6/26/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import "Commom.h"

@implementation Commom

#pragma Color

+(UIColor *)twiiterColor{ return [UIColor colorWithRed:-0.037718947976827621 green:0.76806414127349853 blue:0.79432553052902222 alpha:1]; }

+(UIColor *)twiiterBackgroundColor{ return [UIColor colorWithRed:0.843255 green:0.889737 blue:0.873204 alpha:1]; }

#pragma Icons

+(NSString*)titleIcon{ return @"title_icon@2x.png"; }
+(NSString*)searchIcon{ return @"search@2x.png"; }
+(NSString*)composeIcon{ return @"compose@2x.png"; }
+(NSString*)followIcon{ return @"follow@2x.png"; }


@end
