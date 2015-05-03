//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/notifications/entity/PendingNotification.java
//

#ifndef _ImActorModelModulesNotificationsEntityPendingNotification_H_
#define _ImActorModelModulesNotificationsEntityPendingNotification_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class AMContentDescription;
@class AMPeer;
@class BSBserValues;
@class BSBserWriter;

@interface ImActorModelModulesNotificationsEntityPendingNotification : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAMPeer:(AMPeer *)peer
                       withInt:(jint)sender
                      withLong:(jlong)date
      withAMContentDescription:(AMContentDescription *)content;

- (AMContentDescription *)getContent;

- (jlong)getDate;

- (AMPeer *)getPeer;

- (jint)getSender;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesNotificationsEntityPendingNotification)

FOUNDATION_EXPORT void ImActorModelModulesNotificationsEntityPendingNotification_initWithAMPeer_withInt_withLong_withAMContentDescription_(ImActorModelModulesNotificationsEntityPendingNotification *self, AMPeer *peer, jint sender, jlong date, AMContentDescription *content);

FOUNDATION_EXPORT ImActorModelModulesNotificationsEntityPendingNotification *new_ImActorModelModulesNotificationsEntityPendingNotification_initWithAMPeer_withInt_withLong_withAMContentDescription_(AMPeer *peer, jint sender, jlong date, AMContentDescription *content) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelModulesNotificationsEntityPendingNotification_init(ImActorModelModulesNotificationsEntityPendingNotification *self);

FOUNDATION_EXPORT ImActorModelModulesNotificationsEntityPendingNotification *new_ImActorModelModulesNotificationsEntityPendingNotification_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesNotificationsEntityPendingNotification)

#endif // _ImActorModelModulesNotificationsEntityPendingNotification_H_