//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/ServiceExPhoneCall.java
//

#ifndef _APServiceExPhoneCall_H_
#define _APServiceExPhoneCall_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/ServiceEx.h"

@class BSBserValues;
@class BSBserWriter;

@interface APServiceExPhoneCall : APServiceEx

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)duration;

- (jint)getDuration;

- (jint)getHeader;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APServiceExPhoneCall)

FOUNDATION_EXPORT void APServiceExPhoneCall_initWithInt_(APServiceExPhoneCall *self, jint duration);

FOUNDATION_EXPORT APServiceExPhoneCall *new_APServiceExPhoneCall_initWithInt_(jint duration) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APServiceExPhoneCall_init(APServiceExPhoneCall *self);

FOUNDATION_EXPORT APServiceExPhoneCall *new_APServiceExPhoneCall_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APServiceExPhoneCall)

typedef APServiceExPhoneCall ImActorModelApiServiceExPhoneCall;

#endif // _APServiceExPhoneCall_H_
