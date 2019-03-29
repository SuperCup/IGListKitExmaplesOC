//
//  XMFeedItem.h
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGListDiffable.h"
#import "XMUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface XMFeedItem : NSObject<IGListDiffable>

@property (nonatomic , strong) NSNumber *pk;
@property (nonatomic , strong) XMUser *user;
@property (nonatomic , strong) NSArray *comments;


- (instancetype)initWithPk:(NSNumber *)pk user:(XMUser *)user comments:(NSArray *)comments;
@end

NS_ASSUME_NONNULL_END
