//
//  FollowCollectionViewController.m
//  Twitter
//
//  Created by Fábio Moreira on 6/26/17.
//  Copyright © 2017 Fábio Moreira. All rights reserved.
//

#import "FollowCollectionViewController.h"

#define followSection 0
#define twitesSection 1

@interface FollowCollectionViewController ()

@end

@implementation FollowCollectionViewController


static NSString * const headerReuseIdentifier     = @"headerFollowCollectionViewKind";
static NSString * const followCellReuseIdentifier = @"followCollectionViewCellKind";
static NSString * const twitesCellReuseIdentifier = @"twitesCollectionViewCellKind";
static NSString * const footerReuseIdentifier     = @"footterFollowCollectionViewKind";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.users = [[NSMutableArray alloc] init];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    [self config];
    
    [self.collectionView setBackgroundColor:[Commom twiiterBackgroundColor]];
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //    [self.collectionView registerClass:[HomeCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    //    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    [self.collectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

-(void)config{
    User * user = [[User alloc] init];
    
    int n = arc4random_uniform(5);
    NSString * text = @"Bla bla bla bla. ";
    
    for(int i=0; i<n ; i++)
        text = [text stringByAppendingString:text];
    
    [user setName:@"Brian Voong"];
    [user setNickName:@"@Build that App"];
    [user setBios:text];
    [user setProfileImage:[UIImage imageNamed:@"profile_image@2x.jpg"]];
    
    [self.users addObject:user];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.users.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    Cell * celltemp = [Cell new];
    
    switch (indexPath.section) {
        case followSection:{
            FollowCollectionViewCell * followCell = [collectionView dequeueReusableCellWithReuseIdentifier:followCellReuseIdentifier forIndexPath:indexPath];
            followCell.delegate = self;
            [followCell setUser:[self.users objectAtIndex:indexPath.item]];
            celltemp.delegate = followCell;
            [celltemp fillCell];
            return followCell;
        }
            
        case twitesSection:{
            TwitesCollectionViewCell * twitesCell = [collectionView dequeueReusableCellWithReuseIdentifier:twitesCellReuseIdentifier forIndexPath:indexPath];
            twitesCell.delegate = self;
            [twitesCell setUser:[self.users objectAtIndex:indexPath.item]];
            celltemp.delegate = twitesCell;
            [celltemp fillCell];
            return twitesCell;
        }
            
        default:
            return nil;
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}

#pragma device transitionToSize

- (void)viewWillTransitionToSize:(CGSize)size
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        
        UICollectionViewLayout * layout = self.collectionView.collectionViewLayout;
        [layout invalidateLayout];
        
        // Stuff you used to do in willRotateToInterfaceOrientation would go here.
        // If you don't need anything special, you can set this block to nil.
        
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        
        NSArray<UICollectionReusableView*> * visibleCells = [self.collectionView visibleCells];
        for(UICollectionReusableView * tempView in visibleCells){
            if([tempView isKindOfClass:[TwitesCollectionViewCell class]]){
                [((TwitesCollectionViewCell*)tempView).contentCollectionView.collectionViewLayout invalidateLayout];
            }
        }
        
        // Stuff you used to do in didRotateFromInterfaceOrientation would go here.
        // If not needed, set to nil.
        
    }];
}


#pragma Header and Footer Cells

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    if (kind == UICollectionElementKindSectionHeader) {
        UICollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerReuseIdentifier forIndexPath:indexPath];
        return header;
    }
    
    if (kind == UICollectionElementKindSectionFooter) {
        UICollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:footerReuseIdentifier forIndexPath:indexPath];
        return header;
    }
    return nil;
}

#pragma cellSize

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.section) {
        case followSection:{
            return [self followSectionCellSize:indexPath];
        }
        case twitesSection:{
            return [self twitesSectionCellSize:indexPath];
        }
        default:
            return CGSizeZero;
    }
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    if(section == twitesSection){
        return CGSizeZero;
    }
    return CGSizeMake(self.collectionView.frame.size.width, 50);
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section{
    if(section == twitesSection){
        return CGSizeZero;
    }
    return CGSizeMake(self.collectionView.frame.size.width, 50);
}

#pragma Section Cells Size

-(CGSize)followSectionCellSize:(NSIndexPath*)indexPath{
    CGSize aproximatedSize = CGSizeMake(self.collectionView.frame.size.width, 1000);
    UIFont *textFont = [UIFont systemFontOfSize:14];
    User * user = [self.users objectAtIndex:indexPath.item];
    CGRect size = [user.bios boundingRectWithSize:aproximatedSize options: NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: textFont} context:nil];
    return CGSizeMake(self.collectionView.frame.size.width , ceil(size.size.height) + 80);
}

-(CGSize)twitesSectionCellSize:(NSIndexPath*)indexPath{
    TwitesCollectionViewCell * twiteCell = (TwitesCollectionViewCell*)[self.collectionView cellForItemAtIndexPath:indexPath];
    CGSize aproximatedSize = twiteCell.contentCollectionView.contentSize;
    if(aproximatedSize.height == 0){
        return CGSizeMake(self.collectionView.frame.size.width, 72);
    }
    return CGSizeMake(self.collectionView.frame.size.width, aproximatedSize.height);
}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }
 */

@end
