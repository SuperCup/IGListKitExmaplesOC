//
//  XMGridSectionController.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMGridSectionController.h"
#import <IGListKit/IGListDiffable.h>
#import "XMCenterLabelCell.h"

@interface XMGirdItem : NSObject <IGListDiffable>

@property (nonatomic , strong) UIColor *color;
@property (nonatomic , assign) NSInteger itemCount;
@property (nonatomic , strong) NSArray *items;

@end

@interface XMGridSectionController ()

@property (nonatomic , strong) XMGirdItem *object;
@property (nonatomic , assign) BOOL isReorderable;

@end

@implementation XMGridSectionController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.minimumInteritemSpacing = 1;
        self.minimumLineSpacing = 1;
    }
    return self;
}

- (NSInteger)numberOfItems
{
    return self.object.itemCount;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    CGFloat width = self.collectionContext.containerSize.width;
    CGFloat itemSize = floor(width / 4);
    return CGSizeMake(width, itemSize);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    XMCenterLabelCell *cell = [self.collectionContext dequeueReusableCellOfClass:[XMCenterLabelCell class] forSectionController:self atIndex:index];
    
    cell.text = self.object.items[index];
    cell.backgroundColor = self.object.color;
    
    return cell;
}

- (void)didUpdateToObject:(id)object
{
    self.object = (XMGirdItem *)object;
}

- (BOOL)canMoveItemAtIndex:(NSInteger)index
{
    return self.isReorderable;
}

- (void)moveObjectFromIndex:(NSInteger)sourceIndex toIndex:(NSInteger)destinationIndex
{
    if (!self.object) {
        return;
    }
    NSMutableArray *items = [NSMutableArray arrayWithArray:self.object.items];
    id item = [items objectAtIndex:sourceIndex];
    [items removeObjectAtIndex:sourceIndex];
    [items insertObject:item atIndex:destinationIndex];
    self.object.items = items;
}

@end


@implementation XMGirdItem

- (instancetype)initWithColor:(UIColor *)color itemCount:(NSInteger)itemCount
{
    self = [super init];
    if (self) {
        self.color = [color copy];
        self.itemCount = itemCount;
    }
    self.items = [self computeItems];
    return self;
}

- (NSArray *)computeItems
{
    NSMutableArray *array = [NSMutableArray array];
    
    for (int i = 0; i < self.itemCount; i++) {
        [array addObject:[NSString stringWithFormat:@"%d",i]];
    }
    return array;
}

- (id<NSObject>)diffIdentifier
{
    return self;
}

- (BOOL)isEqualToDiffableObject:(id<IGListDiffable>)object
{
    if (self == object) {
        return YES;
    } else {
        return [self isEqual:object];
    }
}

@end
