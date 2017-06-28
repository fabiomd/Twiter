//
//  TwitesCollectionViewCell.h
//  Twitter
//
//  Created by Fábio Moreira on 6/27/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cell.h"
#import "Commom.h"
#import "TwiteTextCollectionViewCell.h"
#import "TwiteImageCollectionViewCell.h"

@class TwitesCollectionViewCell;

@protocol TwitesCollectionViewCellDelegate <NSObject>

@optional

@end

@interface TwitesCollectionViewCell : UICollectionViewCell <CellDelegate, UICollectionViewDataSource, UICollectionViewDelegate,TwiteTextCollectionViewCellDelegate,TwiteImageCollectionViewCellDelegate>

@property (strong,nonatomic) User * user;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UICollectionView *contentCollectionView;

@property (weak, nonatomic) id<TwitesCollectionViewCellDelegate> delegate;

@end
