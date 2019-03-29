//
//  XMIncrementAnnouncer.h
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class XMIncrementAnnouncer;

@protocol XMIncrememtnListenner <NSObject>

- (void)didIncrementWithAnnouncer:(XMIncrementAnnouncer *)announcer value:(NSInteger)value;

@end

@interface XMIncrementAnnouncer : NSObject

//@property (nonatomic , assign) NSInteger value;
//@property (nonatomic) NSHashTable<XMIncrememtnListenner> *map;

@end

NS_ASSUME_NONNULL_END
