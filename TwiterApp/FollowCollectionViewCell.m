//
//  HomeCollectionViewCell.m
//  Twitter
//
//  Created by Fábio Moreira on 6/12/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import "FollowCollectionViewCell.h"

@implementation FollowCollectionViewCell

#pragma CellDelegate functions

-(void)fillCellCascade{
    self.backgroundColor = [UIColor whiteColor];
    [self configureProfileImage];
    [self configureUserNameLabel];
    [self configureNameLabel];
    [self configureBiosTextField];
    [self configureFollowButton];
}

#pragma followButtonAction delegated

- (IBAction)followButtonWasPressed:(id)sender {
}

#pragma Configure functions

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

-(void)configureBiosTextField{   
    [_biosTextField setText:self.user.bios];
    [_biosTextField setBackgroundColor:[UIColor clearColor]];
}

-(void)configureFollowButton{
    [_followButton.titleLabel setTextColor:[Commom twiiterColor]];
    _followButton.layer.cornerRadius = 5;
    _followButton.layer.borderColor = [Commom twiiterColor].CGColor;
    _followButton.layer.borderWidth = 1;
    [_followButton setImage:[[UIImage imageNamed:[Commom followIcon]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate ] forState: UIControlStateNormal];
    [_followButton imageView].contentMode = UIViewContentModeScaleAspectFit;
    [[_followButton imageView] setTintColor:[Commom twiiterColor]];
}

@end
