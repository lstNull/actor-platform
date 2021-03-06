//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestCheckNickName.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestCheckNickName.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestCheckNickName () {
 @public
  NSString *nickname_;
}

@end

J2OBJC_FIELD_SETTER(APRequestCheckNickName, nickname_, NSString *)

@implementation APRequestCheckNickName

+ (APRequestCheckNickName *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestCheckNickName_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)nickname {
  APRequestCheckNickName_initWithNSString_(self, nickname);
  return self;
}

- (instancetype)init {
  APRequestCheckNickName_init(self);
  return self;
}

- (NSString *)getNickname {
  return self->nickname_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->nickname_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->nickname_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->nickname_];
}

- (NSString *)description {
  NSString *res = @"rpc CheckNickName{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"nickname=", self->nickname_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestCheckNickName_HEADER;
}

@end

APRequestCheckNickName *APRequestCheckNickName_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestCheckNickName_initialize();
  return ((APRequestCheckNickName *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestCheckNickName_init(), data));
}

void APRequestCheckNickName_initWithNSString_(APRequestCheckNickName *self, NSString *nickname) {
  (void) APRequest_init(self);
  self->nickname_ = nickname;
}

APRequestCheckNickName *new_APRequestCheckNickName_initWithNSString_(NSString *nickname) {
  APRequestCheckNickName *self = [APRequestCheckNickName alloc];
  APRequestCheckNickName_initWithNSString_(self, nickname);
  return self;
}

void APRequestCheckNickName_init(APRequestCheckNickName *self) {
  (void) APRequest_init(self);
}

APRequestCheckNickName *new_APRequestCheckNickName_init() {
  APRequestCheckNickName *self = [APRequestCheckNickName alloc];
  APRequestCheckNickName_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestCheckNickName)
