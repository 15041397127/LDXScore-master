//
//  LDXScore.h
//  LDXSCore
//
//  Created by Leen on 14-10-30.
//  Copyright (c) 2014年 Hillsun Cloud Commerce Technology Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@protocol CDPStarEvaluationDelegate <NSObject>

-(void)theCurrentCommentText:(NSString *)commentText soreText:(NSString *)soreText;//获得实时评价级别

@end
@interface LDXScore : UIView


/* 展示的星数 */
@property (nonatomic, assign) NSInteger show_star;
@property (nonatomic, assign) CGFloat show_score;
/* 星星之间的间隔 */
@property (nonatomic, assign) CGFloat space;


/* 距离左边的间距 */
@property (nonatomic, assign) IBInspectable CGFloat padding;
/* 最多的星数，默认为5 */
@property (nonatomic, assign) IBInspectable NSInteger max_star;
/* 是否支持选择星数 */
@property (nonatomic, assign) IBInspectable BOOL isSelect;
@property (nonatomic, strong) IBInspectable UIImage *normalImg;
@property (nonatomic, strong) IBInspectable UIImage *highlightImg;

@property (nonatomic,strong) NSString *commentText;//评价级别
@property (nonatomic ,strong)NSString *soreText; //评价得分

@property (nonatomic,assign) int width;//实时记录评价详细分数

@property (nonatomic,assign) id <CDPStarEvaluationDelegate> delegate;

-(id)initWithFrame:(CGRect)frame  onTheView:(UIView *)view;//初始化
@end
