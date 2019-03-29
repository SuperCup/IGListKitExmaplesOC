//
//  XMLabelSectionController.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMLabelSectionController.h"

#import "XMLabelCell.h"

@interface XMLabelSectionController ()

@property (nonatomic , copy) NSString *object;

@end

@implementation XMLabelSectionController

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    return CGSizeMake(self.collectionContext.containerSize.width, 55);
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

@end
