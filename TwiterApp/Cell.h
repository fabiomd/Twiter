//
//  Cell.h
//  Twitter
//
//  Created by Fábio Moreira on 6/13/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@class Cell;

@protocol CellDelegate <NSObject>

@required

-(void)fillCellCascade;

@optional

@end

@interface Cell : NSObject

-(void)fillCell;

@property (weak, nonatomic) id<CellDelegate> delegate;

@end
