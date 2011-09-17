//
//  AppStatusAppDelegate.h
//  AppStatus
//
//  Created by More on 11-9-17.
//  Copyright 2011 More, AM9 Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppStatusViewController;

@interface AppStatusAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AppStatusViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AppStatusViewController *viewController;

@end

