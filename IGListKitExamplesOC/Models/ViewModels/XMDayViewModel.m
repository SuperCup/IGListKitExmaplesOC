//
//  XMDayViewModel.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMDayViewModel.h"

@implementation XMDayViewModel

- (instancetype)initWithDay:(NSNumber *)day today:(BOOL)today selected:(BOOL)selected appointments:(NSInteger)appointments
{
    self = [super init];
    if (self) {
        _day = [day copy];
        _today = today;
        _selected = selected;
        _appointments = appointments;
    }
    return self;
}


- (id<NSObject>)diffIdentifier
{
    return self.day;
}

- (BOOL)isEqualToDiffableObject:(NSObject<IGListDiffable> *)object
{
    if (self == object) {
        return YES;
    } else if (![object isKindOfClass:[XMDayViewModel class]]){
        return NO;
    } else {
        return (((XMDayViewModel *)object).today == self.today) && (((XMDayViewModel *)object).selected == self.selected) && (((XMDayViewModel *)object).appointments = self.appointments);
    }
}

@end
