//
//  XMHorizontalSectionController.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMHorizontalSectionController.h"
#import <IGListKit/IGListAdapterDataSource.h>
#import "XMEmbeddedCollectionViewCell.h"

@interface XMHorizontalSectionController ()<IGListAdapterDataSource>

@property (nonatomic , assign) NSInteger number;
@property (nonatomic , strong) IGListAdapter *adapter;

@end

@implementation XMHorizontalSectionController

- (IGListAdapter *)adapter
{
    if (!_adapter) {
        _adapter = [[IGListAdapter alloc] initWithUpdater:[IGListAdapterUpdater new] viewController:self.viewController];
        _adapter.dataSource = self;
    }
    return _adapter;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    return CGSizeMake(self.collectionContext.containerSize.width, 100);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    XMEmbeddedCollectionViewCell *cell = [self.collectionContext dequeueReusableCellOfClass:[XMEmbeddedCollectionViewCell class] forSectionController:self atIndex:index];
    
    self.adapter.collectionView = cell.collectionView;
    
    return cell;
}


- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter
{
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 0 ; i < self.number; i++) {
        [array addObject:@(i)];
    }
    return array;
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object
{
    return [XMHorizontalSectionController new];
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter
{
    return nil;
}

- (void)didUpdateToObject:(id)object
{
    self.number = (NSInteger)object;
}

@end
