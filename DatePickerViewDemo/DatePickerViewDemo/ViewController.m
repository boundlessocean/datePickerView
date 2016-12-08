//
//  ViewController.m
//  DatePickerViewDemo
//
//  Created by boundlessocean on 2016/12/8.
//  Copyright © 2016年 ocean. All rights reserved.
//

#import "ViewController.h"
#import "BLDatePickerView.h"
@interface ViewController ()<BLDatePickerViewDelegate>
@property (nonatomic, strong) BLDatePickerView *datePickerView;
@property (nonatomic, strong) UILabel *dateLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configurtionView];
}

- (void)configurtionView{
    [self.view addSubview:self.dateLabel];
}

#pragma mark - - lazy load
// 第一步
- (BLDatePickerView *)datePickerView{
    if (!_datePickerView) {
        _datePickerView = [[BLDatePickerView alloc] init];
        _datePickerView.pickViewDelegate = self;
        [_datePickerView bl_setUpDefaultDateWithYear:2016 month:9 day:8];
        /** 可设置的属性 */
//         /** 标题大小 */
//        @property (nonatomic, strong)UIFont  *titleFont;
//        /** 选择器背景颜色 */
//        @property (nonatomic, strong)UIColor *pickViewBackgroundColor;
//        /** 选择器头部视图颜色 */
//        @property (nonatomic, strong)UIColor *topViewBackgroundColor;
//        /** 取消按钮颜色 */
//        @property (nonatomic, strong)UIColor *cancelButtonColor;
//        /** 确定按钮颜色 */
//        @property (nonatomic, strong)UIColor *sureButtonColor;
//        /** 设置背景透明度 0~1 */
//        @property (nonatomic, assign)CGFloat backGAlpha;
        
    }
    return _datePickerView;
}

- (UILabel *)dateLabel{
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
        _dateLabel.font = [UIFont systemFontOfSize:15];
        _dateLabel.textColor = [UIColor orangeColor];
        _dateLabel.textAlignment = NSTextAlignmentCenter;
        _dateLabel.text = @"点击屏幕";
        [_dateLabel.layer setMasksToBounds:YES];
        [_dateLabel.layer setBorderColor:[UIColor lightGrayColor].CGColor];
        [_dateLabel.layer setBorderWidth:0.5];
        [_dateLabel.layer setCornerRadius:4];
    }
    return _dateLabel;
}

#pragma mark - - touch begin
// 第二步
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.datePickerView bl_show];
}

#pragma mark - - BLDatePickerViewDelegate
// 第三步
- (void)bl_selectedDateResultWithYear:(NSString *)year
                                month:(NSString *)month
                                  day:(NSString *)day{
    _dateLabel.text = [NSString stringWithFormat:@"%@-%@-%@",year,month,day];
}
@end
