//
//  XMEmbeddedCollectionViewCell.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMEmbeddedCollectionViewCell.h"

@implementation XMEmbeddedCollectionViewCell

- (UICollectionView *)collectionView
{
    if (!_collectionView) {
        UICollectionViewLayout *layout = [UICollectionViewLayout new];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.alwaysBounceVertical = NO;
        _collectionView.alwaysBounceHorizontal = YES;
        [self.contentView addSubview:_collectionView];
    }
    return _collectionView;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _collectionView.frame = self.contentView.frame;
}

@end
