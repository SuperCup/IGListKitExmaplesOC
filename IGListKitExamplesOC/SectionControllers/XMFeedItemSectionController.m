//
//  XMFeedItemSectionController.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMFeedItemSectionController.h"
#import "XMFeedItem.h"
#import <IGListKit/IGListSupplementaryViewSource.h>
#import "XMLabelCell.h"
#import "XMUserHeaderView.h"
#import "XMUserFooterView.h"

@interface XMFeedItemSectionController ()<IGListSupplementaryViewSource>

@property (nonatomic , strong) XMFeedItem *feedItem;

@end

@implementation XMFeedItemSectionController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.supplementaryViewSource = self;
    }
    return self;
}


- (NSInteger)numberOfItems
{
    return self.feedItem.comments.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    return CGSizeMake(self.collectionContext.containerSize.width, 55.0);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    XMLabelCell *cell = [self.collectionContext dequeueReusableCellOfClass:[XMLabelCell class] forSectionController:self atIndex:index];
    
    cell.text = self.feedItem.comments[index];
    return cell;
}

- (void)didUpdateToObject:(id)object
{
    self.feedItem = (XMFeedItem *)object;
}

- (NSArray<NSString *> *)supportedElementKinds
{
    return @[UICollectionElementKindSectionHeader , UICollectionElementKindSectionFooter];
}

- (UICollectionReusableView *)viewForSupplementaryElementOfKind:(NSString *)elementKind atIndex:(NSInteger)index
{
    if ([elementKind isEqualToString:UICollectionElementKindSectionHeader]) {
        return [self userHeaderView:index];
    } else {
        return [self userFooterView:index];
    }
}

- (CGSize)sizeForSupplementaryViewOfKind:(NSString *)elementKind atIndex:(NSInteger)index
{
    return CGSizeMake(self.collectionContext.containerSize.width, 40);
}

- (UICollectionReusableView *)userHeaderView:(NSInteger)index
{
    XMUserHeaderView *view = [self.collectionContext dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader forSectionController:self nibName:@"XMUserHeaderView" bundle:nil atIndex:index];
    
    view.handle = self.feedItem.user.handle;
    
    view.name = self.feedItem.user.name;
    return view;
}

- (UICollectionReusableView *)userFooterView:(NSInteger)index
{
    XMUserFooterView *view = [self.collectionContext dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter forSectionController:self nibName:@"XMUserFooterView" bundle:nil atIndex:index];
    view.lbName.text = [NSString stringWithFormat:@"%ld",self.feedItem.comments.count];
    
    return view;
}

@end
