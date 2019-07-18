
#import "RNCheckPhoneCallStatus.h"
#import "React/RCTLog.h"
#import<CallKit/CallKit.h>

@interface RNCheckPhoneCallStatus ()

@property (nonatomic, strong) CXCallObserver *callObserver;

@end

@implementation RNCheckPhoneCallStatus


- (instancetype)init
{
    self = [super init];
    if (self) {
        _callObserver = [[CXCallObserver alloc] init];
    }
    return self;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(get:(RCTResponseSenderBlock)callback)
{
    NSString *phoneStatus = @"PHONE_OFF";
    if (self.callObserver.calls.count>0) {
        phoneStatus = @"PHONE_ON";
    }
    callback(@[[NSNull null], phoneStatus]);
}

@end
