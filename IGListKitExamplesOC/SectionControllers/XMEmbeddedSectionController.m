//
//  XMEmbeddedSectionController.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMEmbeddedSectionController.h"
#import "XMCenterLabelCell.h"

@interface XMEmbeddedSectionController ()

@property (nonatomic , assign) NSInteger number;

@end

static UIEdgeInsets inset ;

@implementation XMEmbeddedSectionController

- (instancetype)init
{
    self = [super init];
    if (self) {
        inset = UIEdgeInsetsMake(0, 0, 0, 10);
    }
    return self;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    CGFloat height = self.collectionContext.containerSize.height;
    return CGSizeMake(height, height);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    XMCenterLabelCell *cell = [self.collectionContext dequeueReusableCellOfClass:[XMCenterLabelCell class] forSectionController:self atIndex:index];
    
    cell.backgroundColor = [UIColor colorWithRed:237 / 255.0 green:73 / 255.0 blue:86 / 255.0 alpha:1];
    return cell;
}

- (void)didUpdateToObject:(id)object
{
    self.number = (NSInteger)object;
}

@end
