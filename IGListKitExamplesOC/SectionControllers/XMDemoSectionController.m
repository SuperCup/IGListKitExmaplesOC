//
//  XMDemoSectionController.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMDemoSectionController.h"
#import <IGListKit/IGListDiffable.h>
#import "XMLabelCell.h"

@interface DemoItem : NSObject <IGListDiffable>

@property (nonatomic , copy) NSString *name;
@property (nonatomic) Class controllserClass;
@property (nonatomic , copy) NSString *controllerIdentifier;

@end

@interface XMDemoSectionController()

@property (nonatomic , strong) DemoItem *object;

@end

@implementation XMDemoSectionController

- (CGSize)sizeForItemAtIndex:(NSInteger)index
{
    return CGSizeMake(self.collectionContext.containerSize.width, 55.0);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index
{
    XMLabelCell *cell = [self.collectionContext dequeueReusableCellOfClass:[XMLabelCell class] forSectionController:self atIndex:index];
    cell.text = self.object.name;
    return cell;
}

- (void)didUpdateToObject:(id)object
{
    _object = (DemoItem *)object;
}


- (void)didSelectItemAtIndex:(NSInteger)index
{
    if (self.object.controllerIdentifier != nil) {
        NSString *identifier = self.object.controllerIdentifier;
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Demo" bundle:nil];
        UIViewController *controller = [storyboard instantiateViewControllerWithIdentifier:identifier];
        controller.title = self.object.name;
        [self.viewController.navigationController pushViewController:controller animated:YES];
    } else if (self.object.controllserClass != nil) {
        UIViewController *controller = [[self.object.controllserClass alloc] init];
        [self.viewController.navigationController pushViewController:controller animated:YES];
    }
}

@end



@implementation DemoItem

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id<NSObject>)diffIdentifier
{
    return self.name;
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object
{
    if (self == object) {
        return YES;
    } else if (![object isKindOfClass:[DemoItem class]]) {
        return NO;
    } else {
        return [((DemoItem *)object).controllserClass isEqual:self.controllserClass] && [((DemoItem *)object).controllerIdentifier isEqualToString:self.controllerIdentifier];
    }
}

@end
