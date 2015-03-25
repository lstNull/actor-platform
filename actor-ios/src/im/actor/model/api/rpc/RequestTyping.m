//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestTyping.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/OutPeer.h"
#include "im/actor/model/api/TypingType.h"
#include "im/actor/model/api/rpc/RequestTyping.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestTyping () {
 @public
  ImActorModelApiOutPeer *peer_;
  ImActorModelApiTypingTypeEnum *typingType_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestTyping, peer_, ImActorModelApiOutPeer *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestTyping, typingType_, ImActorModelApiTypingTypeEnum *)

@implementation ImActorModelApiRpcRequestTyping

+ (ImActorModelApiRpcRequestTyping *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestTyping_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
             withImActorModelApiTypingTypeEnum:(ImActorModelApiTypingTypeEnum *)typingType {
  if (self = [super init]) {
    self->peer_ = peer;
    self->typingType_ = typingType;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (ImActorModelApiOutPeer *)getPeer {
  return self->peer_;
}

- (ImActorModelApiTypingTypeEnum *)getTypingType {
  return self->typingType_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:[[ImActorModelApiOutPeer alloc] init]];
  self->typingType_ = ImActorModelApiTypingTypeEnum_parseWithInt_([values getIntWithInt:3]);
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  if (self->typingType_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeIntWithInt:3 withInt:[((ImActorModelApiTypingTypeEnum *) nil_chk(self->typingType_)) getValue]];
}

- (NSString *)description {
  NSString *res = @"rpc Typing{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", typingType=", self->typingType_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestTyping_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestTyping *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->typingType_ = typingType_;
}

@end

ImActorModelApiRpcRequestTyping *ImActorModelApiRpcRequestTyping_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestTyping_init();
  return ((ImActorModelApiRpcRequestTyping *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiRpcRequestTyping alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestTyping)