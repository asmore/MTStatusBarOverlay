//
//  RootViewController.h
//  Demo
//
//  Created by More on 11-9-17.
//  Copyright 2011 More, AM9 Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTStatusBarOverlay.h"

@interface RootViewController : UIViewController <MTStatusBarOverlayDelegate>{
}


- (IBAction) progress_01;
- (IBAction) progress_05;
- (IBAction) progress_10;

- (IBAction) statusBar_StyleDefault;
- (IBAction) statusBar_BlackOpaque;

@end
