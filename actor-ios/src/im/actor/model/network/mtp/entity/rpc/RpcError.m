//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/rpc/RpcError.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcError.h"
#include "im/actor/model/util/StreamingUtils.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"

@implementation MTRpcError

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return [super initWithJavaIoInputStream:stream];
}

- (instancetype)initWithInt:(jint)errorCode
               withNSString:(NSString *)errorTag
               withNSString:(NSString *)userMessage
                withBoolean:(jboolean)canTryAgain
              withByteArray:(IOSByteArray *)relatedData {
  if (self = [super init]) {
    self->errorCode_ = errorCode;
    MTRpcError_set_errorTag_(self, errorTag);
    MTRpcError_set_userMessage_(self, userMessage);
    self->canTryAgain_ = canTryAgain;
    MTRpcError_set_relatedData_(self, relatedData);
  }
  return self;
}

- (jint)getLength {
  return 1 + 4 + AMStreamingUtils_stringSizeWithNSString_(errorTag_) + AMStreamingUtils_stringSizeWithNSString_(userMessage_) + 1;
}

- (jbyte)getHeader {
  return MTRpcError_HEADER;
}

- (void)writeBodyWithJavaIoOutputStream:(JavaIoOutputStream *)bs {
  AMStreamingUtils_writeIntWithInt_withJavaIoOutputStream_(errorCode_, bs);
  AMStreamingUtils_writeProtoStringWithNSString_withJavaIoOutputStream_(errorTag_, bs);
  AMStreamingUtils_writeProtoStringWithNSString_withJavaIoOutputStream_(userMessage_, bs);
  AMStreamingUtils_writeProtoBoolWithBoolean_withJavaIoOutputStream_(canTryAgain_, bs);
  AMStreamingUtils_writeProtoBytesWithByteArray_withJavaIoOutputStream_(relatedData_, bs);
}

- (void)readBodyWithJavaIoInputStream:(JavaIoInputStream *)bs {
  errorCode_ = AMStreamingUtils_readIntWithJavaIoInputStream_(bs);
  MTRpcError_set_errorTag_(self, AMStreamingUtils_readProtoStringWithJavaIoInputStream_(bs));
  MTRpcError_set_userMessage_(self, AMStreamingUtils_readProtoStringWithJavaIoInputStream_(bs));
  canTryAgain_ = AMStreamingUtils_readProtoBoolWithJavaIoInputStream_(bs);
  MTRpcError_set_relatedData_(self, AMStreamingUtils_readProtoBytesWithJavaIoInputStream_(bs));
}

- (NSString *)description {
  return JreStrcat("$IC$C", @"RpcError [#", errorCode_, ' ', errorTag_, ']');
}

- (void)dealloc {
  RELEASE_(errorTag_);
  RELEASE_(userMessage_);
  RELEASE_(relatedData_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(MTRpcError *)other {
  [super copyAllFieldsTo:other];
  other->errorCode_ = errorCode_;
  MTRpcError_set_errorTag_(other, errorTag_);
  MTRpcError_set_userMessage_(other, userMessage_);
  other->canTryAgain_ = canTryAgain_;
  MTRpcError_set_relatedData_(other, relatedData_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoInputStream:", "RpcError", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithInt:withNSString:withNSString:withBoolean:withByteArray:", "RpcError", NULL, 0x1, NULL },
    { "getLength", NULL, "I", 0x1, NULL },
    { "getHeader", NULL, "B", 0x4, NULL },
    { "writeBodyWithJavaIoOutputStream:", "writeBody", "V", 0x4, "Ljava.io.IOException;" },
    { "readBodyWithJavaIoInputStream:", "readBody", "V", 0x4, "Ljava.io.IOException;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "B", NULL, .constantValue.asChar = MTRpcError_HEADER },
    { "errorCode_", NULL, 0x1, "I", NULL,  },
    { "errorTag_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "userMessage_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "canTryAgain_", NULL, 0x1, "Z", NULL,  },
    { "relatedData_", NULL, 0x1, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _MTRpcError = { 1, "RpcError", "im.actor.model.network.mtp.entity.rpc", NULL, 0x1, 7, methods, 6, fields, 0, NULL};
  return &_MTRpcError;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTRpcError)
