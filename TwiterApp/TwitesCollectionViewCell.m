//
//  TwitesCollectionViewCell.m
//  Twitter
//
//  Created by Fábio Moreira on 6/27/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import "TwitesCollectionViewCell.h"

@implementation TwitesCollectionViewCell

static NSString * const twitesTextReuseIdentifier = @"twiteTextCellKind";
static NSString * const twitesImageReuseIdentifier = @"twiteImageCellKind";

#pragma CellDelegate functions

-(void)fillCellCascade{
    self.backgroundColor = [UIColor whiteColor];
    [self configureProfileImage];
    [self configureUserNameLabel];
    [self configureNameLabel];
    [self configureContentCollectionView];
}

-(void)configureProfileImage{
    [_profileImage setImage:self.user.profileImage];
    [_profileImage.layer setCornerRadius:5.0];
    [_profileImage.layer setMasksToBounds:YES];
}

-(void)configureUserNameLabel{
    [_usernameLabel setText:self.user.name];
}

-(void)configureNameLabel{
    [_nameLabel setText:self.user.nickName];
}

-(void)configureContentCollectionView{
    [self.contentCollectionView reloadData];
}

#pragma collectionViewController dataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.item == 0){
        TwiteTextCollectionViewCell * twiteTextCell = [collectionView dequeueReusableCellWithReuseIdentifier:twitesTextReuseIdentifier forIndexPath:indexPath];
        [twiteTextCell.textView setText:@"KAKAROTOOOOO"];
        twiteTextCell.delegate = self;
        return twiteTextCell;
    }else{
        TwiteImageCollectionViewCell * twiteImageCell = [collectionView dequeueReusableCellWithReuseIdentifier:twitesImageReuseIdentifier forIndexPath:indexPath];
        [twiteImageCell.imageView setImage:[UIImage imageNamed:@"goku.png"]];
        [twiteImageCell.imageView setBackgroundColor:[UIColor yellowColor]];
        twiteImageCell.delegate = self;
        return twiteImageCell;
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 2;
}

#pragma cellSize

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.item) {
        case 0:{
            CGSize aproximatedSize = CGSizeMake(self.contentCollectionView.frame.size.width, 1000);
            UIFont *textFont = [UIFont systemFontOfSize:14];
//            User * user = [self.users objectAtIndex:indexPath.item];
            CGRect size = [@"KAKAROTOOOOO" boundingRectWithSize:aproximatedSize options: NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: textFont} context:nil];
            return CGSizeMake(self.contentCollectionView.frame.size.width , ceil(size.size.height) + 20);
            
//            return CGSizeMake(self.contentCollectionView.frame.size.width, 110);
        }
        case 1:{
            return CGSizeMake(self.contentCollectionView.frame.size.width, 330);
        }
        default:
            return CGSizeZero;
    }
}

@end
