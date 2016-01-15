//
//  PKLeftMenuViewController.m
//  Pianke
//
//  Created by LSN on 16/1/14.
//  Copyright (c) 2016年 LSN. All rights reserved.


#import "PKLeftMenuViewController.h"
#import "PKLeftHeadView.h"//头部view
#import "PKLeftTableView.h"//列表选项
#import "PKLeftMusicView.h"//列表的播放器
@interface PKLeftMenuViewController ()

@property (strong, nonatomic)   PKLeftHeadView *leftheadView;
@property (strong, nonatomic)   PKLeftTableView *leftTable;
@property (strong, nonatomic)   PKLeftMusicView *leftMusic;

@end

@implementation PKLeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:RGB(51, 51, 51)];
    [self.view addSubview:self.leftheadView];
    WS(weakSelf);
    [_leftheadView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(weakSelf.view.mas_top);
        make.height.equalTo(190);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right).offset(-40);
    }];
    [self.view addSubview:self.leftTable];
    [_leftTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.leftheadView.mas_bottom);
        make.right.equalTo(weakSelf.view.mas_right);
        make.left.equalTo(weakSelf.view.mas_left);
        make.bottom.equalTo(weakSelf.view.mas_bottom).offset(-60);
    }];
    
    [self.view addSubview:self.leftMusic];
    [_leftMusic mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.height.equalTo(60);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right);
        make.bottom.equalTo(weakSelf.view.mas_bottom);
    }];

}
- (PKLeftHeadView *)leftheadView
{
    if (!_leftheadView) {
        _leftheadView = [[PKLeftHeadView alloc] init];
        
    }
    return  _leftheadView;
}
- (PKLeftTableView *)leftTable{
    if (!_leftTable) {
        _leftTable = [[PKLeftTableView alloc]initWithFrame:CGRectMake(0, 0, 0, 0) style:(UITableViewStylePlain)];
    }
    return _leftTable;
}
- (PKLeftMusicView *)leftMusic
{
    if (!_leftMusic) {
        _leftMusic = [[PKLeftMusicView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        
    }
    return _leftMusic;
}
- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}
@end
