//
//  XMLabelCell.h
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IGListKit/IGListBindable.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMLabelCell : UICollectionViewCell<IGListBindable>

@property (nonatomic , copy) NSString *text;

- (void)bindViewModel:(NSString *)viewModel;

+ (CGFloat)textHeight:(NSString *)text width:(CGFloat)width;

+ (CGFloat)singleLineHeight;

@end

NS_ASSUME_NONNULL_END
