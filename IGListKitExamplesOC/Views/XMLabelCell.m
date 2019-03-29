//
//  XMLabelCell.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMLabelCell.h"

static UIEdgeInsets insets;
static UIFont *font;

@interface XMLabelCell ()

@property (nonatomic , strong) UILabel *label;
@property (nonatomic , strong) CALayer *separator;

@end

@implementation XMLabelCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        insets = UIEdgeInsetsMake(8, 15, 8, 15);
        font = [UIFont systemFontOfSize:17];
        [self.contentView addSubview:self.label];
        [self.layer addSublayer:self.separator];
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGRect bounds = self.contentView.bounds;
    self.label.frame = UIEdgeInsetsInsetRect(bounds, insets);
    CGFloat height = 0.5;
    CGFloat left = insets.left;
    self.separator.frame = CGRectMake(left, bounds.size.height - height, bounds.size.width - left, height);
    
}


- (void)setText:(NSString *)text
{
    _text = text;
    self.label.text = text;
}

+ (CGFloat)singleLineHeight
{
    return font.lineHeight + insets.top + insets.bottom;
}

+ (CGFloat)textHeight:(NSString *)text width:(CGFloat)width
{
    CGSize size = CGSizeMake(width - insets.left - insets.right, CGFLOAT_MAX);
    CGRect bounds = [text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin |
                     NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName : font} context:nil];
    return ceil(bounds.size.height) + insets.top + insets.bottom;
}

- (UILabel *)label
{
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.backgroundColor = [UIColor clearColor];
        _label.numberOfLines = 0;
        _label.font = font;
    }
    return _label;
}

- (CALayer *)separator
{
    if (!_separator) {
        _separator = [CALayer layer];
        _separator.backgroundColor = [UIColor colorWithRed:200/ 255.0 green:199 / 255.0 blue:204 / 255.0 alpha:1].CGColor;
    }
    return _separator;
}



-(void)bindViewModel:(NSString *)viewModel
{
    self.label.text = viewModel;
}

@end
