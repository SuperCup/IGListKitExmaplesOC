//
//  XMCenterLabelCell.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMCenterLabelCell.h"

@interface XMCenterLabelCell ()

@property (nonatomic , strong) UILabel *label;

@end

@implementation XMCenterLabelCell

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.label.frame = self.contentView.frame;
}

- (void)setText:(NSString *)text
{
    _text = text;
    self.label.text = text;
}

- (UILabel *)label
{
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.backgroundColor = [UIColor clearColor];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.textColor = [UIColor whiteColor];
        _label.font = [UIFont boldSystemFontOfSize:10];
        [self.contentView addSubview:_label];
    }
    return _label;
}


@end
