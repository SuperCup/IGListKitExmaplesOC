//
//  XMDispalySectionController.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMDispalySectionController.h"
#import <IGListKit/IGListDisplayDelegate.h>
#import "XMLabelCell.h"

@interface XMDispalySectionController ()<IGListDisplayDelegate>



@end

static UIEdgeInsets inset;

@implementation XMDispalySectionController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.displayDelegate = self;
        inset = UIEdgeInsetsMake(0, 0, 30, 0);
    }
    return self;
}

- (NSInteger)numberOfItems
{
    return 4;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    return CGSizeMake(self.collectionContext.containerSize.width, 55.0);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    XMLabelCell *cell = [self.collectionContext dequeueReusableCellOfClass:[XMLabelCell class] forSectionController:self atIndex:index];
    cell.text = [NSString stringWithFormat:@"Section %ld, cell %ld",self.section,index];
    return cell;
}

- (void)listAdapter:(IGListAdapter *)listAdapter willDisplaySectionController:(IGListSectionController *)sectionController
{
    NSLog(@"Will display section %ld",self.section);
}

- (void)listAdapter:(IGListAdapter *)listAdapter willDisplaySectionController:(IGListSectionController *)sectionController cell:(UICollectionViewCell *)cell atIndex:(NSInteger)index
{
    NSLog(@"Did will display cell %ld in section %ld",index,self.section);
}

- (void)listAdapter:(IGListAdapter *)listAdapter didEndDisplayingSectionController:(IGListSectionController *)sectionController
{
    NSLog(@"Did end displaying section %ld",self.section);
}

- (void)listAdapter:(IGListAdapter *)listAdapter didEndDisplayingSectionController:(IGListSectionController *)sectionController cell:(UICollectionViewCell *)cell atIndex:(NSInteger)index
{
    NSLog(@"Did end displaying cell %ld in section %ld",index,self.section);
}

@end
