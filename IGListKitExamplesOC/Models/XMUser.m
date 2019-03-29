//
//  XMUser.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMUser.h"

@implementation XMUser

- (instancetype)initWithPk:(NSNumber *)pk name:(NSString *)name handle:(NSString *)handle
{
    self = [super init];
    if (self) {
        _pk = [pk copy];
        _name = [name copy];
        _handle = [handle copy];
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
        return YES;
    } else if (![object isKindOfClass:[XMUser class]]) {
        return NO;
    } else {
        return [((XMUser *)object).name isEqualToString:self.name] && [((XMUser *)object).handle isEqualToString:self.handle];
    }
}


@end
