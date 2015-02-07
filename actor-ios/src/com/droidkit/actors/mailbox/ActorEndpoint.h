//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/mailbox/ActorEndpoint.java
//

#ifndef _ComDroidkitActorsMailboxActorEndpoint_H_
#define _ComDroidkitActorsMailboxActorEndpoint_H_

@class ComDroidkitActorsMailboxMailbox;
@class DAActorScope;

#include "J2ObjC_header.h"

@interface ComDroidkitActorsMailboxActorEndpoint : NSObject {
}

- (instancetype)initWithNSString:(NSString *)path;

- (NSString *)getPath;

- (ComDroidkitActorsMailboxMailbox *)getMailbox;

- (DAActorScope *)getScope;

- (jboolean)isDisconnected;

- (void)connectWithComDroidkitActorsMailboxMailbox:(ComDroidkitActorsMailboxMailbox *)mailbox
                                  withDAActorScope:(DAActorScope *)scope;

@end

J2OBJC_EMPTY_STATIC_INIT(ComDroidkitActorsMailboxActorEndpoint)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComDroidkitActorsMailboxActorEndpoint)

#endif // _ComDroidkitActorsMailboxActorEndpoint_H_
