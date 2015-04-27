//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSignUp.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSignUp.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSignUp.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSignUp () {
 @public
  jlong phoneNumber_;
  NSString *smsHash_;
  NSString *smsCode_;
  NSString *name_;
  IOSByteArray *deviceHash_;
  NSString *deviceTitle_;
  jint appId_;
  NSString *appKey_;
  jboolean isSilent__;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, smsHash_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, smsCode_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, name_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, deviceHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, appKey_, NSString *)


#line 20
@implementation ImActorModelApiRpcRequestSignUp


#line 23
+ (ImActorModelApiRpcRequestSignUp *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSignUp_fromBytesWithByteArray_(data);
}


#line 37
- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
                withNSString:(NSString *)name
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey
                 withBoolean:(jboolean)isSilent {
  if (self = [super init]) {
    
#line 38
    self->phoneNumber_ = phoneNumber;
    
#line 39
    self->smsHash_ = smsHash;
    
#line 40
    self->smsCode_ = smsCode;
    
#line 41
    self->name_ = name;
    
#line 42
    self->deviceHash_ = deviceHash;
    
#line 43
    self->deviceTitle_ = deviceTitle;
    
#line 44
    self->appId_ = appId;
    
#line 45
    self->appKey_ = appKey;
    
#line 46
    self->isSilent__ = isSilent;
  }
  return self;
}


#line 49
- (instancetype)init {
  return [super init];
}

- (jlong)getPhoneNumber {
  
#line 54
  return self->phoneNumber_;
}


#line 57
- (NSString *)getSmsHash {
  
#line 58
  return self->smsHash_;
}


#line 61
- (NSString *)getSmsCode {
  
#line 62
  return self->smsCode_;
}


#line 65
- (NSString *)getName {
  
#line 66
  return self->name_;
}


#line 69
- (IOSByteArray *)getDeviceHash {
  
#line 70
  return self->deviceHash_;
}


#line 73
- (NSString *)getDeviceTitle {
  
#line 74
  return self->deviceTitle_;
}


#line 77
- (jint)getAppId {
  
#line 78
  return self->appId_;
}


#line 81
- (NSString *)getAppKey {
  
#line 82
  return self->appKey_;
}


#line 85
- (jboolean)isSilent {
  
#line 86
  return self->isSilent__;
}


#line 90
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->phoneNumber_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->smsHash_ = [values getStringWithInt:2];
  self->smsCode_ = [values getStringWithInt:3];
  self->name_ = [values getStringWithInt:4];
  self->deviceHash_ = [values getBytesWithInt:7];
  self->deviceTitle_ = [values getStringWithInt:8];
  self->appId_ = [values getIntWithInt:9];
  self->appKey_ = [values getStringWithInt:10];
  self->isSilent__ = [values getBoolWithInt:11];
}


#line 103
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 104
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  if (self->smsHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:2 withNSString:self->smsHash_];
  if (self->smsCode_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:3 withNSString:self->smsCode_];
  if (self->name_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:4 withNSString:self->name_];
  if (self->deviceHash_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:7 withByteArray:self->deviceHash_];
  if (self->deviceTitle_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:8 withNSString:self->deviceTitle_];
  [writer writeIntWithInt:9 withInt:self->appId_];
  if (self->appKey_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:10 withNSString:self->appKey_];
  [writer writeBoolWithInt:11 withBoolean:self->isSilent__];
}

- (NSString *)description {
  NSString *res = @"rpc SignUp{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"name=", self->name_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", deviceHash=", BSUtils_byteArrayToStringWithByteArray_(self->deviceHash_)));
  res = JreStrcat("$$", res, JreStrcat("$$", @", deviceTitle=", self->deviceTitle_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 145
  return ImActorModelApiRpcRequestSignUp_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestSignUp *)other {
  [super copyAllFieldsTo:other];
  other->phoneNumber_ = phoneNumber_;
  other->smsHash_ = smsHash_;
  other->smsCode_ = smsCode_;
  other->name_ = name_;
  other->deviceHash_ = deviceHash_;
  other->deviceTitle_ = deviceTitle_;
  other->appId_ = appId_;
  other->appKey_ = appKey_;
  other->isSilent__ = isSilent__;
}

@end

ImActorModelApiRpcRequestSignUp *ImActorModelApiRpcRequestSignUp_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSignUp_init();
  
#line 24
  return ((ImActorModelApiRpcRequestSignUp *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestSignUp alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSignUp)