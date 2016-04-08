//
//  WebRTCModule+RTCSignalingState.m
//
//  Created by one on 2015/9/24.
//  Copyright © 2015 One. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "WebRTCModule+RTCSignalingState.h"

@implementation WebRTCModule (RTCSignalingState)

- (NSString *)stringForSignalingState:(RTCSignalingState)state {
  NSString *signalingState = nil;
  switch (state) {
    case RTCSignalingStable:
      signalingState = @"stable";
      break;
    case RTCSignalingHaveLocalOffer:
      signalingState = @"have-local-offer";
      break;
    case RTCSignalingHaveLocalPrAnswer:
      signalingState = @"have-local-pranswer";
      break;
    case RTCSignalingHaveRemoteOffer:
      signalingState = @"have-remote-offer";
      break;
    case RTCSignalingHaveRemotePrAnswer:
      signalingState = @"have-remote-pranswer";
      break;
    default:
      signalingState = @"closed";
      break;
  }
  return signalingState;
}

@end
