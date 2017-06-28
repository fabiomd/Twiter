//
//  FollowCollectionViewController.h
//  Twitter
//
//  Created by Fábio Moreira on 6/26/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FollowCollectionViewCell.h"
#import "TwitesCollectionViewCell.h"
#import "User.h"

@interface FollowCollectionViewController : UICollectionViewController <FollowCollectionViewCellDelegate, TwitesCollectionViewCellDelegate>

@property (strong,nonatomic) NSMutableArray * users;

@end
