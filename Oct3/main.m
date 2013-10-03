//
//  main.m
//  Oct3
//
//  Created by James Neely on 10/2/13.
//  Copyright (c) 2013 James Neely. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Oct3AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        NSLog(@"This is output produced by NSLog. Yay!");
        int i = 44;
		
        NSLog(@"The value of i is %d.", i);
        
        CGFloat pie = 3.14159;
		NSLog(@"The value of pie is %g.", pie);
        
        NSString *s = @"I want to make great apps";
		NSLog(@"Why am I here? %@.", s);
        
        CGPoint p = CGPointMake(10.0, 20.0);
        NSLog(@"The value of p is (%g, %g)",p.x, p.y);
        
        CGRect r = CGRectMake(0.0, 0.0, 360.0, 480.0);
        
		NSLog(@"The value of r is (%g, %g), %g by %g.",
              r.origin. x, r.origin.y,
              r.size.width, r.size.height
              );
        
        //There is only one object of class UIDevice, and it already
		//exists.  Get the address of this object.
		UIDevice *device = [UIDevice currentDevice];
        
		NSString *version = device.systemVersion;
		NSLog(@"The version of iOS is %@.", version);
        
        //There is only one object of class UIScreen, and it already
		//exists.  Get the address of this object.
		UIScreen *screen = [UIScreen mainScreen];
        
		CGRect limits = [screen bounds];
		NSLog(@"Origin is (%g, %g), dimensions are %g by %g.",
              limits.origin.x, limits.origin.y,
              limits.size.width, limits.size.height
              );
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([Oct3AppDelegate class]));
    }
}
