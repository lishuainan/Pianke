//
//  PKLeftMenuViewController.m
//  Pianke
//
//  Created by LSN on 16/1/14.
//  Copyright (c) 2016年 LSN. All rights reserved.
//

#import "PKLeftMenuViewController.h"
#import "PKLeftHeadView.h"//头部view
#import "PKLeftTableView.h"//列表选项
@interface PKLeftMenuViewController ()

@property (strong, nonatomic)   PKLeftHeadView *leftheadView;

@property (strong, nonatomic)   PKLeftTableView *leftTable;
@end

@implementation PKLeftMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:RGB(51, 51, 51)];
    [self.view addSubview:self.leftheadView];
    WS(weakSelf);
    [_leftheadView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(weakSelf.view.mas_top);
        make.height.equalTo(165);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right).offset(-40);
    }];
}
- (PKLeftHeadView *)leftheadView
{
    if (!_leftheadView) {
        _leftheadView = [[PKLeftHeadView alloc] init];
        
    }
    return  _leftheadView;
}
- (PKLeftTableView *)leftTable
{
    return _leftTable;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
