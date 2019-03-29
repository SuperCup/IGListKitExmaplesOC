//
//  XMFeedItem.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMFeedItem.h"

@implementation XMFeedItem

- (instancetype)initWithPk:(NSNumber *)pk user:(XMUser *)user comments:(NSArray *)comments
{
    self = [super init];
    if (self) {
        _pk = [pk copy];
        _user = [user copy];
        _comments = [comments copy];
    }
    return self;
}


- (id<NSObject>)diffIdentifier
{
    return self.pk;
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object
{
    if (self == object) {
        return  YES;
    } else if (![object isKindOfClass:[XMFeedItem class]]) {
        return NO;
    } else {
        return [self.user isEqualToDiffableObject:((XMFeedItem *)object).user];
    }
}

@end
