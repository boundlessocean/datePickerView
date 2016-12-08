# datePickerView
日期选择器
##用法
```
// 一： 初始化 默认height 150；
  BLDatePickerView *datePickerView = [[BLDatePickerView alloc] init];

// 二：显示
  [datePickerView bl_show];
  
// 三：回调选择结果
// 选择结果2种回调方式
// 1.block
  datePickerView.sureButtonClickBlcok = ^(NSString *year, NSString *month, NSString *day){

  };
  
// 2.delegate
  datePickerView.pickViewDelegate = self;
  - (void)bl_selectedDateResultWithYear:(NSString *)year
                                month:(NSString *)month
                                  day:(NSString *)day{
                                  
                                  };

```
##如果你需要设置默认日期
```
/** 设置默认日期 */
- (void)bl_setUpDefaultDateWithYear:(NSInteger)year
                              month:(NSInteger)month
                                day:(NSInteger)day;
```
##如果你需要修改默写效果
```
/** 标题大小 */
@property (nonatomic, strong)UIFont  *titleFont;
/** 选择器背景颜色 */
@property (nonatomic, strong)UIColor *pickViewBackgroundColor;
/** 选择器头部视图颜色 */
@property (nonatomic, strong)UIColor *topViewBackgroundColor;
/** 取消按钮颜色 */
@property (nonatomic, strong)UIColor *cancelButtonColor;
/** 确定按钮颜色 */
@property (nonatomic, strong)UIColor *sureButtonColor;

```
