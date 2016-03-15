//
//  ViewController.m
//  LDXScore
//
//  Created by Leen on 15/5/18.
//  Copyright (c) 2015年 leen. All rights reserved.
//

#import "ViewController.h"
#import "LDXScore.h"
@interface ViewController ()<CDPStarEvaluationDelegate>
@property (weak, nonatomic) IBOutlet UILabel *pingfen;
@property (nonatomic ,weak) IBOutlet LDXScore *view1;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@property (weak, nonatomic) IBOutlet UIButton *submite;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    _view1 =[[LDXScore alloc]initWithFrame:CGRectMake(100, 100, 100, 100) onTheView:self.view];
    
    _view1.delegate=self;
    
    _pingfen.text =_view1.commentText;
//    [self.view addSubview:_view1];
    NSLog(@"%@",_view1.commentText);
    
    _scoreLabel.text=_view1.soreText;
    
    [_submite addTarget:self action:@selector(submitCommentClick) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark CDPStarEvaluationDelegate获得实时评价级别
-(void)theCurrentCommentText:(NSString *)commentText soreText:(NSString *)soreText{
    
    
    _pingfen.text=commentText;
   
    _scoreLabel.text =soreText;
    
}

-(void)submitCommentClick{
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"提交结果" message:[NSString stringWithFormat:@"级别:%@  分数:%d\n(分数默认显示小数点后两位,自己可根据需求更改)",_pingfen.text,_view1.width*5] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alertView show];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
