//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/util/MTUids.java
//

#ifndef _ImActorModelNetworkUtilMTUids_H_
#define _ImActorModelNetworkUtilMTUids_H_

@class JavaUtilConcurrentAtomicAtomicLong;

#include "J2ObjC_header.h"

@interface ImActorModelNetworkUtilMTUids : NSObject {
}

+ (jlong)nextId;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL ImActorModelNetworkUtilMTUids_initialized;
J2OBJC_STATIC_INIT(ImActorModelNetworkUtilMTUids)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jlong ImActorModelNetworkUtilMTUids_nextId();

FOUNDATION_EXPORT JavaUtilConcurrentAtomicAtomicLong *ImActorModelNetworkUtilMTUids_NEXT_ID_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelNetworkUtilMTUids, NEXT_ID_, JavaUtilConcurrentAtomicAtomicLong *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkUtilMTUids)

#endif // _ImActorModelNetworkUtilMTUids_H_
