//
//  HomeViewController.h
//  Twitter
//
//  Created by Fábio Moreira on 6/26/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//


#import "FollowCollectionViewController.h"
#import "Commom.h"

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *containerView;

@property (weak, nonatomic) IBOutlet UIImageView *tittleIcon;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *composeButton;

@end
