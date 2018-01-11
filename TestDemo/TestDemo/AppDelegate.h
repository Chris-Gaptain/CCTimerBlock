//
//  AppDelegate.h
//  TestDemo
//
//  Created by Chris Captain on 2018/1/11.
//  Copyright © 2018年 Chris_Captain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

