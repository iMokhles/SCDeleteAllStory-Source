#import <UIKit/UIKit.h>
#import "UIAlertView+Blocks.h"

%hook SCProfileV3MyStoryCellView
- (void)actionButtonPressed {

}
%end

%hook SCStoriesViewController
- (void)_createGroupStoryButtonPressed {

}
%new
- (void)deleteallstory {

}
%end

%hook SCAppDelegate
- (void)applicationDidBecomeActive:(id)arg1 {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![defaults boolForKey:@"notFirstRun"]) {
    	SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];
      	[alert showSuccess:@"تحذير - Warning" subTitle:@"من الممكن يتعرض حسابك للحظر من قبل شركة سناب شات بسبب استخدامك التطبيق المعدل ولذلك لست مسؤول عند استخدام سناب عثمان \n Your account may be blocked by Snapchat because of your use of third-party applications and therefore I am not responsible for using SCOthman \n By - Othman Al-Omiry \n عثمان العميري \n @OthmanAl3miry" closeButtonTitle:@"أتفهم I understand" duration:0.0f];
      
      	[defaults setBool:YES forKey:@"notFirstRun"];
    }

  %orig();
}
%end
