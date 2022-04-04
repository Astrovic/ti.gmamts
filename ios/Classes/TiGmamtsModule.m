/**
 * gmamts
 *
 * Created by astrovicApps
 * Copyright (c) 2022 Your Company. All rights reserved.
 */

#import "TiGmamtsModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "TiApp.h"
//#include "Pods/Pods/GoogleMobileAdsMediationTestSuite"
@import GoogleMobileAdsMediationTestSuite;

@implementation TiGmamtsModule

#pragma mark Internal

// This is generated for your module, please do not change it
- (id)moduleGUID
{
  return @"7116fe73-bbb1-4f46-ac4f-6c00d0d611b5";
}

// This is generated for your module, please do not change it
- (NSString *)moduleId
{
  return @"ti.gmamts";
}

#pragma mark Lifecycle

- (void)startup
{
  // This method is called when the module is first loaded
  // You *must* call the superclass
  [super startup];
  DebugLog(@"[DEBUG] %@ loaded", self);
}

#pragma Public APIs

- (void)showMediationTestSuite:(id)unused
{
  TiThreadPerformOnMainThread(
      ^{
          [GoogleMobileAdsMediationTestSuite presentOnViewController:[[[TiApp app] controller] topPresentedController] delegate:nil];
      },NO);
}

@end
