//
//  CCViewController.m
//  TestDemo
//
//  Created by Chris Captain on 2018/1/11.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import "CCViewController.h"
#import "NSTimer+CCExtention.h"

@interface CCViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation CCViewController

- (void)dealloc
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [self.timer invalidate];
    self.timer = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = NSStringFromClass([self class]);
    
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFiredAction) userInfo:nil repeats:YES];
    
    __weak typeof(self) weak_self = self;
    [NSTimer cc_scheduledTimeWithTimerInterval:1.0 block:^{
        [weak_self timerFiredAction];
    } repeats:YES];
}

- (void)timerFiredAction
{
    NSLog(@"Timer fired log");
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
