//
//  XMUserHeaderView.m
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/27.
//  Copyright © 2019 luffy. All rights reserved.
//

#import "XMUserHeaderView.h"

@interface XMUserHeaderView ()

@property (weak, nonatomic) IBOutlet UILabel *lbName;

@property (weak, nonatomic) IBOutlet UILabel *lbHandle;

@end

@implementation XMUserHeaderView

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setName:(NSString *)name
{
    _name = name;
    self.lbName.text = name;
}

- (void)setHandle:(NSString *)handle
{
    _handle = handle;
    self.lbHandle.text = handle;
}

@end
