//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseSendAuthCode.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseSendAuthCode.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseSendAuthCode.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcResponseSendAuthCode () {
 @public
  NSString *smsHash_;
  jboolean isRegistered__;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseSendAuthCode, smsHash_, NSString *)


#line 20
@implementation ImActorModelApiRpcResponseSendAuthCode


#line 23
+ (ImActorModelApiRpcResponseSendAuthCode *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseSendAuthCode_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithNSString:(NSString *)smsHash
                     withBoolean:(jboolean)isRegistered {
  if (self = [super init]) {
    
#line 31
    self->smsHash_ = smsHash;
    
#line 32
    self->isRegistered__ = isRegistered;
  }
  return self;
}


#line 35
- (instancetype)init {
  return [super init];
}

- (NSString *)getSmsHash {
  
#line 40
  return self->smsHash_;
}


#line 43
- (jboolean)isRegistered {
  
#line 44
  return self->isRegistered__;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->smsHash_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->isRegistered__ = [values getBoolWithInt:2];
}


#line 54
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 55
  if (self->smsHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->smsHash_];
  [writer writeBoolWithInt:2 withBoolean:self->isRegistered__];
}

- (NSString *)description {
  NSString *res = @"tuple SendAuthCode{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 71
  return ImActorModelApiRpcResponseSendAuthCode_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcResponseSendAuthCode *)other {
  [super copyAllFieldsTo:other];
  other->smsHash_ = smsHash_;
  other->isRegistered__ = isRegistered__;
}

@end

ImActorModelApiRpcResponseSendAuthCode *ImActorModelApiRpcResponseSendAuthCode_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseSendAuthCode_init();
  
#line 24
  return ((ImActorModelApiRpcResponseSendAuthCode *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcResponseSendAuthCode alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseSendAuthCode)