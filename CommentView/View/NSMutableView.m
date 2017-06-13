//
//  NSMutableView.m
//  Family
//
//  Created by zhangming on 17/6/13.
//  Copyright © 2017年 youjiesi. All rights reserved.
//

#import "NSMutableView.h"
#import "Masonry.h"
#import "UIView+Extension.h"


#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface NSMutableView ()<UITextViewDelegate>
{
    NSInteger rows;
}
@property (weak, nonatomic) UITextView *textView;

@end

@implementation NSMutableView

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        //#F1F2F5
        //rows = 1;
        self.backgroundColor = [UIColor colorWithRed:241/255.0 green:242/255.0 blue:245/255.0 alpha:1];
        [self setUI];
    }
    return self;
}

- (void)setUI{
    
    UIImageView *im = [UIImageView new];
    [self addSubview:im];
    [im mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).with.offset(8);
        make.centerY.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(25, 25));
    }];
    im.image = [UIImage imageNamed:@"source"];
    
    
    UIButton *btn = [UIButton new];
    [self addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.equalTo(self).with.offset(-8);
        make.centerY.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(45, 25));
    }];
    [btn setTitle:@"发送" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onBtn) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UITextView *textView = [UITextView new];
    [self addSubview:textView];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(im.mas_right).with.offset(8);
        make.top.equalTo(self).with.offset(8);
        make.bottom.equalTo(self).with.offset(-8);
        make.right.equalTo(btn.mas_left).with.offset(-8);
    }];
    textView.font = [UIFont systemFontOfSize:25];
    textView.delegate = self;
    self.textView = textView;
    
    
}

- (void)textViewDidChange:(UITextView *)textView{
    
    NSInteger numLines = textView.contentSize.height / textView.font.lineHeight;
    
    CGFloat spacing = textView.font.lineHeight;
    NSLog(@"%ld",numLines);
    
    if (numLines != rows ) {
        
        if (numLines > rows ) {
    
            rows = numLines;
            self.height += spacing;
            self.y -= spacing;
            
        }else{
            
            rows = numLines;
            self.height -= spacing;
            self.y += spacing;
        
        }
        
    }
    if ([textView.text isEqualToString:@""]) {
        rows = 0;
        self.height = 60;
        self.y = ScreenHeight - 60;
    }
    
    
}

- (void)onBtn{
    
    self.textView.text = @"";
    [self.textView resignFirstResponder];
    self.y = ScreenHeight - 60;
    self.height = 60;
    rows = 0;
}

@end
