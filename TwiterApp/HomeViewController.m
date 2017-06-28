//
//  HomeViewController.m
//  Twitter
//
//  Created by Fábio Moreira on 6/26/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureAddButton];
    [self configureTittleIcon];
    [self configureSearchButton];
    [self configureComposeButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)configureAddButton{
    [_addButton setImage:[[UIImage imageNamed:[Commom followIcon]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate ] forState: UIControlStateNormal];
    [_addButton imageView].contentMode = UIViewContentModeScaleAspectFit;
    [[_addButton imageView] setTintColor:[Commom twiiterColor]];
}

-(void)configureTittleIcon{
    [_tittleIcon setImage:[[UIImage imageNamed:[Commom titleIcon]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [_tittleIcon setTintColor:[Commom twiiterColor]];
}

-(void)configureSearchButton{
    [_searchButton setImage:[[UIImage imageNamed:[Commom searchIcon]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate ] forState: UIControlStateNormal];
    [_searchButton imageView].contentMode = UIViewContentModeScaleAspectFit;
    [[_searchButton imageView] setTintColor:[Commom twiiterColor]];
}

-(void)configureComposeButton{
    [_composeButton setImage:[[UIImage imageNamed:[Commom composeIcon]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate ] forState: UIControlStateNormal];
    [_composeButton imageView].contentMode = UIViewContentModeScaleAspectFit;
    [[_composeButton imageView] setTintColor:[Commom twiiterColor]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
