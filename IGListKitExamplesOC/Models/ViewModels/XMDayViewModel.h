//
//  XMDayViewModel.h
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListDiffable.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMDayViewModel : NSObject<IGListDiffable>

@property (nonatomic , strong) NSNumber *day;
@property (nonatomic , assign) BOOL today;
@property (nonatomic , assign) BOOL selected;
@property (nonatomic , assign) NSInteger appointments;

- (instancetype)initWithDay:(NSNumber *)day today:(BOOL)today selected:(BOOL)selected appointments:(NSInteger)appointments;

@end

NS_ASSUME_NONNULL_END
