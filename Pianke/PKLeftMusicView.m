//
//  PKLeftMusicView.m
//  Pianke
//
//  Created by LSN on 16/1/15.
//  Copyright (c) 2016年 LSN. All rights reserved.
//

#import "PKLeftMusicView.h"
#import "Masonry.h"

@implementation PKLeftMusicView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addSubview:self.backBtn];
        [self addSubview:self.musicImage];
        [self addSubview:self.musicFrom];
        [self addSubview:self.musicName];
        [self addSubview:self.startBtn];
        [self layoutSubviews];
    }
    return self;
}

- (void)layoutSubviews
{
    WS(weakSelf);
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(weakSelf.mas_left);
        make.right.equalTo(weakSelf.mas_right);
        make.bottom.equalTo(weakSelf.mas_bottom);
        make.height.equalTo(60);
    }];
    [_musicImage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.equalTo(CGSizeMake(40, 40));
        make.left.equalTo(weakSelf.mas_left).offset(20);
        make.bottom.equalTo(weakSelf.mas_bottom).offset(-10);
        
    }];
    [_musicName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_musicImage.mas_right).offset(20);
//        make.top.equalTo(_backBtn.mas_top).offset(10);
        make.height.equalTo(20);
        make.centerY.equalTo(weakSelf.mas_centerY).offset(-8);
    }];
    [_musicFrom mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.height.equalTo(20);
//        make.top.equalTo(_musicName.mas_bottom).offset(10);
//        make.centerX.equalTo(_musicName.mas_centerX);
        make.centerY.equalTo(weakSelf.mas_centerY).offset(13);
        make.left.equalTo(_musicImage.mas_right).offset(20);
    }];
    
    [_startBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.equalTo(CGSizeMake(20, 20));
        make.right.equalTo(_backBtn.mas_right).offset(-80);
        make.centerY.equalTo(weakSelf.mas_centerY);
    }];
    

    
}
- (UIImageView *)musicImage
{
    if (!_musicImage) {
        _musicImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"音乐"]];
        
    }
    return _musicImage;
}
- (UILabel *)musicName
{
    if (!_musicName) {
        _musicName = [[UILabel alloc] init];
        _musicName.textColor = [UIColor whiteColor];
        _musicName.text = @"123124";
        _musicName.textAlignment = NSTextAlignmentLeft;
        _musicName.font = [UIFont systemFontOfSize:15.0];
    }
    return _musicName;
}
- (UILabel *)musicFrom
{
    if (!_musicFrom) {
        _musicFrom = [[UILabel alloc] init];
        _musicFrom.textColor = [UIColor whiteColor];
        _musicFrom.text = @"sdfsdf";
        _musicFrom.textAlignment = NSTextAlignmentLeft;
        _musicFrom.font = [UIFont systemFontOfSize:13.0];
    }
    return _musicFrom;
}

- (UIButton *)startBtn
{
    if (!_startBtn) {
        _startBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _startBtn.selected = NO;
        [_startBtn setBackgroundImage:[UIImage imageNamed:@"播放"] forState:(UIControlStateNormal)];
        [_startBtn setBackgroundImage:[UIImage imageNamed:@"暂停"] forState:(UIControlStateSelected)];
    }
    return _startBtn;
}
- (UIButton *)backBtn
{
    if (!_backBtn) {
        _backBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _backBtn.backgroundColor = RGB(28, 28, 28);
    }
    return _backBtn;
}

@end
