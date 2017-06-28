//
//  Cell.m
//  Twitter
//
//  Created by Fábio Moreira on 6/13/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import "Cell.h"

@implementation Cell

#pragma delegate functions

-(void)fillCellCascade{

    if (self.delegate && [self.delegate respondsToSelector:@selector(fillCellCascade)]) {
        [self.delegate fillCellCascade];
    }
}

#pragma non-delegate functions

-(void)fillCell{
    [self fillCellCascade];
}

@end
