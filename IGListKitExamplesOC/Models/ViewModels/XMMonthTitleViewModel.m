//
//  XMMonthTitleViewModel.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMMonthTitleViewModel.h"

@implementation XMMonthTitleViewModel


- (id<NSObject>)diffIdentifier
{
    return self.name;
}

- (BOOL)isEqualToDiffableObject:(NSObject <IGListDiffable> *)object
{
    if (self == object) {
        return YES;
    } else if (![object isKindOfClass:[XMMonthTitleViewModel class]]) {
        return NO;
    } else {
        return YES;
    }
}


@end
