//
//  HomeCollectionViewCell.h
//  Twitter
//
//  Created by Fábio Moreira on 6/12/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cell.h"
#import "Commom.h"

@class FollowCollectionViewCell;

@protocol FollowCollectionViewCellDelegate <NSObject>

@optional

@end

@interface FollowCollectionViewCell : UICollectionViewCell <CellDelegate>

@property (strong,nonatomic) User * user;

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextView *biosTextField;
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UIButton *followButton;

@property (weak, nonatomic) id<FollowCollectionViewCellDelegate> delegate;

@end
