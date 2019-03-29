//
//  XMUser.h
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListDiffable.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMUser : NSObject<IGListDiffable>

@property (nonatomic , strong) NSNumber *pk;
@property (nonatomic , copy)   NSString *name;
@property (nonatomic , copy)   NSString *handle;

- (instancetype)initWithPk:(NSNumber *)pk name:(NSString *)name handle:(NSString *)handle;

@end

NS_ASSUME_NONNULL_END
