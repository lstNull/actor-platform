//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/Container.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/mtp/entity/Container.h"
#include "im/actor/model/network/mtp/entity/ProtoMessage.h"
#include "im/actor/model/util/StreamingUtils.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"

@interface MTContainer () {
 @public
  IOSObjectArray *messages_;
}
@end

J2OBJC_FIELD_SETTER(MTContainer, messages_, IOSObjectArray *)

@implementation MTContainer

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)stream {
  return [super initWithJavaIoInputStream:stream];
}

- (instancetype)initWithMTProtoMessageArray:(IOSObjectArray *)messages {
  if (self = [super init]) {
    MTContainer_set_messages_(self, messages);
  }
  return self;
}

- (IOSObjectArray *)getMessages {
  return messages_;
}

- (jint)getLength {
  jint messagesLength = 0;
  if (((IOSObjectArray *) nil_chk(messages_))->size_ > 0) {
    {
      IOSObjectArray *a__ = messages_;
      MTProtoMessage * const *b__ = a__->buffer_;
      MTProtoMessage * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        MTProtoMessage *m = *b__++;
        messagesLength += [((MTProtoMessage *) nil_chk(m)) getLength];
      }
    }
  }
  return 1 + AMStreamingUtils_varintSizeWithLong_(messages_->size_) + messagesLength;
}

- (jbyte)getHeader {
  return MTContainer_HEADER;
}

- (void)writeBodyWithJavaIoOutputStream:(JavaIoOutputStream *)bs {
  if (messages_ != nil && messages_->size_ > 0) {
    AMStreamingUtils_writeVarIntWithLong_withJavaIoOutputStream_(messages_->size_, bs);
    {
      IOSObjectArray *a__ = messages_;
      MTProtoMessage * const *b__ = a__->buffer_;
      MTProtoMessage * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        MTProtoMessage *m = *b__++;
        [((MTProtoMessage *) nil_chk(m)) writeObjectWithJavaIoOutputStream:bs];
      }
    }
  }
  else {
    AMStreamingUtils_writeVarIntWithLong_withJavaIoOutputStream_(0, bs);
  }
}

- (void)readBodyWithJavaIoInputStream:(JavaIoInputStream *)bs {
  jint size = (jint) AMStreamingUtils_readVarIntWithJavaIoInputStream_(bs);
  MTContainer_setAndConsume_messages_(self, [IOSObjectArray newArrayWithLength:size type:MTProtoMessage_class_()]);
  for (jint i = 0; i < size; ++i) {
    IOSObjectArray_SetAndConsume(messages_, i, [[MTProtoMessage alloc] initWithJavaIoInputStream:bs]);
  }
}

- (NSString *)description {
  return JreStrcat("$I$", @"Conatiner[", ((IOSObjectArray *) nil_chk(messages_))->size_, @" items]");
}

- (void)dealloc {
  RELEASE_(messages_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(MTContainer *)other {
  [super copyAllFieldsTo:other];
  MTContainer_set_messages_(other, messages_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoInputStream:", "Container", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithMTProtoMessageArray:", "Container", NULL, 0x1, NULL },
    { "getMessages", NULL, "[Lim.actor.model.network.mtp.entity.ProtoMessage;", 0x1, NULL },
    { "getLength", NULL, "I", 0x1, NULL },
    { "getHeader", NULL, "B", 0x4, NULL },
    { "writeBodyWithJavaIoOutputStream:", "writeBody", "V", 0x4, "Ljava.io.IOException;" },
    { "readBodyWithJavaIoInputStream:", "readBody", "V", 0x4, "Ljava.io.IOException;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "B", NULL, .constantValue.asChar = MTContainer_HEADER },
    { "messages_", NULL, 0x2, "[Lim.actor.model.network.mtp.entity.ProtoMessage;", NULL,  },
  };
  static const J2ObjcClassInfo _MTContainer = { 1, "Container", "im.actor.model.network.mtp.entity", NULL, 0x1, 8, methods, 2, fields, 0, NULL};
  return &_MTContainer;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTContainer)
