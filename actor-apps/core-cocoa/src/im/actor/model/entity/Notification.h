//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/Notification.java
//

#ifndef _AMNotification_H_
#define _AMNotification_H_

#include "J2ObjC_header.h"

@class AMContentDescription;
@class AMPeer;

@interface AMNotification : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                       withInt:(jint)sender
      withAMContentDescription:(AMContentDescription *)contentDescription;

- (AMContentDescription *)getContentDescription;

- (AMPeer *)getPeer;

- (jint)getSender;

@end

J2OBJC_EMPTY_STATIC_INIT(AMNotification)

FOUNDATION_EXPORT void AMNotification_initWithAMPeer_withInt_withAMContentDescription_(AMNotification *self, AMPeer *peer, jint sender, AMContentDescription *contentDescription);

FOUNDATION_EXPORT AMNotification *new_AMNotification_initWithAMPeer_withInt_withAMContentDescription_(AMPeer *peer, jint sender, AMContentDescription *contentDescription) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMNotification)

typedef AMNotification ImActorModelEntityNotification;

#endif // _AMNotification_H_
