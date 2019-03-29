//
//  XMExpandableSectionController.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMExpandableSectionController.h"
#import "XMLabelCell.h"

@interface XMExpandableSectionController ()

@property (nonatomic , assign) BOOL expanded;
@property (nonatomic , copy)   NSString *object;

@end

@implementation XMExpandableSectionController

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    CGFloat width = self.collectionContext.containerSize.width;
    CGFloat height = self.expanded ? [XMLabelCell textHeight:self.object width:width] : XMLabelCell.singleLineHeight;
    return CGSizeMake(width, height);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    XMLabelCell *cell = [self.collectionContext dequeueReusableCellOfClass:[XMLabelCell class] forSectionController:self atIndex:index];
    cell.text = self.object;
    return cell;
}

- (void)didUpdateToObject:(id)object
{
    self.object = (NSString *)object;
}

- (void)didSelectItemAtIndex:(NSInteger)index
{
    _expanded = !_expanded;
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:0.6 options:0 animations:^{
        [self.collectionContext invalidateLayoutForSectionController:self completion:nil];
    } completion:nil];
}

@end
