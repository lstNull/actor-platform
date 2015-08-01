//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSignOut.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSignOut.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@implementation APRequestSignOut

+ (APRequestSignOut *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestSignOut_fromBytesWithByteArray_(data);
}

- (instancetype)init {
  APRequestSignOut_init(self);
  return self;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
}

- (NSString *)description {
  NSString *res = @"rpc SignOut{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestSignOut_HEADER;
}

@end

APRequestSignOut *APRequestSignOut_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestSignOut_initialize();
  return ((APRequestSignOut *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestSignOut_init(), data));
}

void APRequestSignOut_init(APRequestSignOut *self) {
  (void) APRequest_init(self);
}

APRequestSignOut *new_APRequestSignOut_init() {
  APRequestSignOut *self = [APRequestSignOut alloc];
  APRequestSignOut_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestSignOut)