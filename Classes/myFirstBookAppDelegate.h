//
//  myFirstBookAppDelegate.h
//  myFirstBook
//
//  Created by masaki on 10/09/29.
//  Copyright 2010 CTO, COO at Alliance Port, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class myFirstBookViewController;

@interface myFirstBookAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    myFirstBookViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet myFirstBookViewController *viewController;

@end

