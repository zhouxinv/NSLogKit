//
//  VVLogSDK.m
//  NSLogKit
//
//  Created by gewei on 2021/1/15.
//

#import "VVLogSDK.h"
#import <Masonry/Masonry.h>
#import <shareKit/shareKit.h>

@implementation VVLogSDK

- (void)sayHello {
    NSLog(@"say hello");
}

- (void)addMenuWithView:(UIView *)view {
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"VVLogSDK" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.centerX.equalTo(view);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(150);
    }];
}

- (void)onClickBtn:(UIButton *)btn {
    NSLog(@"VVLogSDK");
    VVshareSDK *test = [[VVshareSDK alloc] init];
    [test sayHello];
    [test sayMyLove];
}

@end
