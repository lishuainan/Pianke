//
//  PKLeftMusicView.h
//  Pianke
//
//  Created by LSN on 16/1/15.
//  Copyright (c) 2016年 LSN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PKLeftMusicView : UIView

@property (strong, nonatomic)    UIImageView *musicImage;

@property (strong, nonatomic)    UILabel *musicName;
@property (strong, nonatomic)    UILabel *musicFrom;

@property (strong, nonatomic)    UIButton *startBtn;
@property (strong, nonatomic)    UIButton *backBtn;

@end
