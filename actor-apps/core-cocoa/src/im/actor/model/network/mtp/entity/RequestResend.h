//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/RequestResend.java
//

#ifndef _MTRequestResend_H_
#define _MTRequestResend_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

@class BSDataInput;
@class BSDataOutput;

#define MTRequestResend_HEADER 9

@interface MTRequestResend : MTProtoStruct

#pragma mark Public

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (instancetype)initWithLong:(jlong)messageId;

- (jlong)getMessageId;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(MTRequestResend)

J2OBJC_STATIC_FIELD_GETTER(MTRequestResend, HEADER, jbyte)

FOUNDATION_EXPORT void MTRequestResend_initWithLong_(MTRequestResend *self, jlong messageId);

FOUNDATION_EXPORT MTRequestResend *new_MTRequestResend_initWithLong_(jlong messageId) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void MTRequestResend_initWithBSDataInput_(MTRequestResend *self, BSDataInput *stream);

FOUNDATION_EXPORT MTRequestResend *new_MTRequestResend_initWithBSDataInput_(BSDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTRequestResend)

typedef MTRequestResend ImActorModelNetworkMtpEntityRequestResend;

#endif // _MTRequestResend_H_
