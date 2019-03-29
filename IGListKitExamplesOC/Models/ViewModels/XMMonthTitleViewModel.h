//
//  XMMonthTitleViewModel.h
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IGListKit/IGListDiffable.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMMonthTitleViewModel : NSObject<IGListDiffable>

@property (nonatomic , copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
