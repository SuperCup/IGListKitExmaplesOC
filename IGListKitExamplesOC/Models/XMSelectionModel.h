//
//  XMSelectionModel.h
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListDiffable.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(int , XMSelectionModelType) {
    XMSelectionModelTypeNone,
    XMSelectionModelTypeFullWidth,
    XMSelectionModelTypeNil
};

@interface XMSelectionModel : NSObject <IGListDiffable>

@property (nonatomic , assign) XMSelectionModelType type;
@property (nonatomic , strong) NSArray <NSString *> *options;

- (instancetype)initWithOptions:(NSArray <NSString *> *)options type:(XMSelectionModelType)type;

@end

NS_ASSUME_NONNULL_END
