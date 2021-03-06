//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseSendAuthCode.java
//

#ifndef _APResponseSendAuthCode_H_
#define _APResponseSendAuthCode_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APResponseSendAuthCode_HEADER 2

@interface APResponseSendAuthCode : APResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)smsHash
                     withBoolean:(jboolean)isRegistered;

+ (APResponseSendAuthCode *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (NSString *)getSmsHash;

- (jboolean)isRegistered;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseSendAuthCode)

J2OBJC_STATIC_FIELD_GETTER(APResponseSendAuthCode, HEADER, jint)

FOUNDATION_EXPORT APResponseSendAuthCode *APResponseSendAuthCode_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseSendAuthCode_initWithNSString_withBoolean_(APResponseSendAuthCode *self, NSString *smsHash, jboolean isRegistered);

FOUNDATION_EXPORT APResponseSendAuthCode *new_APResponseSendAuthCode_initWithNSString_withBoolean_(NSString *smsHash, jboolean isRegistered) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APResponseSendAuthCode_init(APResponseSendAuthCode *self);

FOUNDATION_EXPORT APResponseSendAuthCode *new_APResponseSendAuthCode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseSendAuthCode)

typedef APResponseSendAuthCode ImActorModelApiRpcResponseSendAuthCode;

#endif // _APResponseSendAuthCode_H_
