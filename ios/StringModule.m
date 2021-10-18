#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(StringModule, NSObject)
RCT_EXTERN_METHOD(showMessage:(NSString *) message)
@end
