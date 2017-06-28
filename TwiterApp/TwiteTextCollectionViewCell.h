//
//  TwiteTextCollectionViewCell.h
//  Twitter
//
//  Created by Fábio Moreira on 6/27/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TwiteTextCollectionViewCell;

@protocol TwiteTextCollectionViewCellDelegate <NSObject>

@end

@interface TwiteTextCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) id<TwiteTextCollectionViewCellDelegate> delegate;

@end
