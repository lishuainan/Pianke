//
//  PKLeftHeadView.h
//  Pianke
//
//  Created by LSN on 16/1/14.
//  Copyright (c) 2016年 LSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PKLeftHeadView : UIView

@property (strong, nonatomic)  UIButton *iconImageBtn;//头像按钮
@property (strong, nonatomic)  UIButton *userNameBtn;//用户名登陆按钮
@property (strong, nonatomic)  UIButton *downBtn;//下载按钮
@property (strong, nonatomic)  UIButton *collecBtn;//收藏按钮
@property (strong, nonatomic)  UIButton *messageBtn;//消息按钮
@property (strong, nonatomic)  UIButton *writeBtn;//写评论
@property (strong, nonatomic)  UIButton *searchBtn;//搜索按钮

@property (strong, nonatomic) UIImageView *backImage;

@end
