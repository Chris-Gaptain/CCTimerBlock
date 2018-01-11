//
//  ViewController.m
//  TestDemo
//
//  Created by Chris Captain on 2018/1/11.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import "ViewController.h"
#import "CCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = NSStringFromClass([self class]);
}

- (IBAction)pushAction:(id)sender
{
    CCViewController *ccVC = [[CCViewController alloc] init];
    [self.navigationController pushViewController:ccVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
