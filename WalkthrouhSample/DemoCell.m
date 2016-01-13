//
//  DemoCell.m
//  WalkthrouhSample
//
//  Created by Alina Hambaryan on 11/24/15.
//  Copyright © 2015 Alina Hambaryan. All rights reserved.
//

#import "DemoCell.h"
@interface DemoCell ()

@property (weak, nonatomic) IBOutlet UIImageView *tutorialImageView;

@end
@implementation DemoCell

- (void)setTutorialPictureName:(NSString *)tutorialPictureName
{
    _tutorialPictureName = tutorialPictureName;
    self.tutorialImageView.image = [UIImage imageNamed:_tutorialPictureName];
}

@end
