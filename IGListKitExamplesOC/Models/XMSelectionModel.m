//
//  XMSelectionModel.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMSelectionModel.h"

@implementation XMSelectionModel


- (instancetype)initWithOptions:(NSArray <NSString *> *)options type:(XMSelectionModelType)type
{
    self = [super init];
    if (self) {
        _options = [options copy];
        _type = type;
    }
    return self;
}

- (id<NSObject>)diffIdentifier
{
    return self;
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object
{
    return [self isEqual:object];
}


@end
