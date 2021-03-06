//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/internal/LocalDocument.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/internal/AbsLocalContent.h"
#include "im/actor/model/entity/content/internal/LocalDocument.h"
#include "im/actor/model/entity/content/internal/LocalFastThumb.h"
#include "java/io/IOException.h"

@interface ImActorModelEntityContentInternalLocalDocument () {
 @public
  NSString *fileName_;
  NSString *fileDescriptor_;
  jint fileSize_;
  NSString *mimeType_;
  ImActorModelEntityContentInternalLocalFastThumb *fastThumb_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelEntityContentInternalLocalDocument, fileName_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelEntityContentInternalLocalDocument, fileDescriptor_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelEntityContentInternalLocalDocument, mimeType_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelEntityContentInternalLocalDocument, fastThumb_, ImActorModelEntityContentInternalLocalFastThumb *)

@implementation ImActorModelEntityContentInternalLocalDocument

- (instancetype)initWithNSString:(NSString *)fileName
                    withNSString:(NSString *)fileDescriptor
                         withInt:(jint)fileSize
                    withNSString:(NSString *)mimeType
withImActorModelEntityContentInternalLocalFastThumb:(ImActorModelEntityContentInternalLocalFastThumb *)fastThumb {
  ImActorModelEntityContentInternalLocalDocument_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_(self, fileName, fileDescriptor, fileSize, mimeType, fastThumb);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)data {
  ImActorModelEntityContentInternalLocalDocument_initWithByteArray_(self, data);
  return self;
}

- (instancetype)initWithBSBserValues:(BSBserValues *)values {
  ImActorModelEntityContentInternalLocalDocument_initWithBSBserValues_(self, values);
  return self;
}

- (NSString *)getFileName {
  return fileName_;
}

- (NSString *)getFileDescriptor {
  return fileDescriptor_;
}

- (jint)getFileSize {
  return fileSize_;
}

- (NSString *)getMimeType {
  return mimeType_;
}

- (ImActorModelEntityContentInternalLocalFastThumb *)getFastThumb {
  return fastThumb_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  fileName_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  fileDescriptor_ = [values getStringWithInt:2];
  fileSize_ = [values getIntWithInt:3];
  mimeType_ = [values getStringWithInt:4];
  IOSByteArray *rawFT = [values optBytesWithInt:5];
  if (rawFT != nil) {
    fastThumb_ = new_ImActorModelEntityContentInternalLocalFastThumb_initWithByteArray_(rawFT);
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:fileName_];
  [writer writeStringWithInt:2 withNSString:fileDescriptor_];
  [writer writeIntWithInt:3 withInt:fileSize_];
  [writer writeStringWithInt:4 withNSString:mimeType_];
  if (fastThumb_ != nil) {
    [writer writeObjectWithInt:5 withBSBserObject:fastThumb_];
  }
}

@end

void ImActorModelEntityContentInternalLocalDocument_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_(ImActorModelEntityContentInternalLocalDocument *self, NSString *fileName, NSString *fileDescriptor, jint fileSize, NSString *mimeType, ImActorModelEntityContentInternalLocalFastThumb *fastThumb) {
  (void) ImActorModelEntityContentInternalAbsLocalContent_init(self);
  self->fileName_ = fileName;
  self->fileDescriptor_ = fileDescriptor;
  self->fileSize_ = fileSize;
  self->mimeType_ = mimeType;
  self->fastThumb_ = fastThumb;
}

ImActorModelEntityContentInternalLocalDocument *new_ImActorModelEntityContentInternalLocalDocument_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_(NSString *fileName, NSString *fileDescriptor, jint fileSize, NSString *mimeType, ImActorModelEntityContentInternalLocalFastThumb *fastThumb) {
  ImActorModelEntityContentInternalLocalDocument *self = [ImActorModelEntityContentInternalLocalDocument alloc];
  ImActorModelEntityContentInternalLocalDocument_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_(self, fileName, fileDescriptor, fileSize, mimeType, fastThumb);
  return self;
}

void ImActorModelEntityContentInternalLocalDocument_initWithByteArray_(ImActorModelEntityContentInternalLocalDocument *self, IOSByteArray *data) {
  (void) ImActorModelEntityContentInternalAbsLocalContent_init(self);
  [self load__WithByteArray:data];
}

ImActorModelEntityContentInternalLocalDocument *new_ImActorModelEntityContentInternalLocalDocument_initWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityContentInternalLocalDocument *self = [ImActorModelEntityContentInternalLocalDocument alloc];
  ImActorModelEntityContentInternalLocalDocument_initWithByteArray_(self, data);
  return self;
}

void ImActorModelEntityContentInternalLocalDocument_initWithBSBserValues_(ImActorModelEntityContentInternalLocalDocument *self, BSBserValues *values) {
  (void) ImActorModelEntityContentInternalAbsLocalContent_init(self);
  [self parseWithBSBserValues:values];
}

ImActorModelEntityContentInternalLocalDocument *new_ImActorModelEntityContentInternalLocalDocument_initWithBSBserValues_(BSBserValues *values) {
  ImActorModelEntityContentInternalLocalDocument *self = [ImActorModelEntityContentInternalLocalDocument alloc];
  ImActorModelEntityContentInternalLocalDocument_initWithBSBserValues_(self, values);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentInternalLocalDocument)
