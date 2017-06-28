//
//  TwiteImageCollectionViewCell.h
//  Twitter
//
//  Created by Fábio Moreira on 6/27/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TwiteImageCollectionViewCell;

@protocol TwiteImageCollectionViewCellDelegate <NSObject>

@end

@interface TwiteImageCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) id<TwiteImageCollectionViewCellDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
