//
//  ViewController.m
//  WalkthrouhSample
//
//  Created by Alina Hambaryan on 11/24/15.
//  Copyright © 2015 Alina Hambaryan. All rights reserved.
//

#import "ViewController.h"
#import "DemoCell.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (strong, nonatomic) NSArray *pictures;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.pictures = @[@"Intro#1", @"Intro#2", @"Intro#3"];
    self.pageControl.numberOfPages = self.pictures.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.pictures.count;
}

#pragma mark - UICollectionViewDelegate

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DemoCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"DemoCell" forIndexPath:indexPath];
    
    cell.tutorialPictureName = self.pictures [indexPath.row];
    
    self.pageControl.currentPage = indexPath.row;
    
    return cell;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.collectionView.frame.size;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsZero;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}

- (void)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout cellCenteredAtIndexPath:(NSIndexPath *)indexPath
{
    self.pageControl.currentPage = indexPath.row;
}


@end
