//
//  AppDelegate.h
//  IGListKitExamplesOC
//
//  Created by 赵露明 on 2019/3/26.
//  Copyright © 2019 luffy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

