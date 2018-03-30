//
//  ViewController.m
//  国际化
//
//  Created by 神州锐达 on 2018/3/29.
//  Copyright © 2018年 onePiece. All rights reserved.
//

#import "ViewController.h"
#import "LSDLanguageManager.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *showLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeLanguage:) name:ChangeLanguageNotificationName object:nil];
    
}

- (IBAction)englishBtnClick:(UIButton *)sender {
    
    [[LSDLanguageManager shareManager] setUserlanguage:@"en"];
    
}

- (IBAction)chineseBtnClick:(UIButton *)sender {
    
    [[LSDLanguageManager shareManager] setUserlanguage:@"zh-Hans"];
    
}

-(void)changeLanguage:(NSNotification *)notification{
    
    self.showLabel.text = [[LSDLanguageManager shareManager] getStringForKey:@"language" tbl:nil];
}


-(void)dealloc{

    [[NSNotificationCenter defaultCenter] removeObserver:self name:ChangeLanguageNotificationName object:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
