//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/internal/AbsContentContainer.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/droidkit/bser/BserParser.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "im/actor/model/entity/content/internal/AbsContentContainer.h"
#include "im/actor/model/entity/content/internal/AbsLocalContent.h"
#include "im/actor/model/entity/content/internal/ContentLocalContainer.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"
#include "java/io/IOException.h"

#define ImActorModelEntityContentInternalAbsContentContainer_TYPE_LOCAL 0
#define ImActorModelEntityContentInternalAbsContentContainer_TYPE_REMOTE 1

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityContentInternalAbsContentContainer, TYPE_LOCAL, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityContentInternalAbsContentContainer, TYPE_REMOTE, jint)

@implementation ImActorModelEntityContentInternalAbsContentContainer

+ (ImActorModelEntityContentInternalAbsContentContainer *)loadContainerWithByteArray:(IOSByteArray *)data {
  return ImActorModelEntityContentInternalAbsContentContainer_loadContainerWithByteArray_(data);
}

- (IOSByteArray *)buildContainer {
  BSDataOutput *res = new_BSDataOutput_init();
  BSBserWriter *writer = new_BSBserWriter_initWithBSDataOutput_(res);
  if ([self isKindOfClass:[ImActorModelEntityContentInternalContentLocalContainer class]]) {
    [writer writeIntWithInt:1 withInt:ImActorModelEntityContentInternalAbsContentContainer_TYPE_LOCAL];
    [writer writeBytesWithInt:2 withByteArray:[((ImActorModelEntityContentInternalAbsLocalContent *) nil_chk([((ImActorModelEntityContentInternalContentLocalContainer *) check_class_cast(self, [ImActorModelEntityContentInternalContentLocalContainer class])) getContent])) buildContainer]];
  }
  else if ([self isKindOfClass:[ImActorModelEntityContentInternalContentRemoteContainer class]]) {
    [writer writeIntWithInt:1 withInt:ImActorModelEntityContentInternalAbsContentContainer_TYPE_REMOTE];
    [writer writeBytesWithInt:2 withByteArray:[((APMessage *) nil_chk([((ImActorModelEntityContentInternalContentRemoteContainer *) check_class_cast(self, [ImActorModelEntityContentInternalContentRemoteContainer class])) getMessage])) buildContainer]];
  }
  else {
    @throw new_JavaIoIOException_initWithNSString_(@"Unknown type");
  }
  return [res toByteArray];
}

- (instancetype)init {
  ImActorModelEntityContentInternalAbsContentContainer_init(self);
  return self;
}

@end

ImActorModelEntityContentInternalAbsContentContainer *ImActorModelEntityContentInternalAbsContentContainer_loadContainerWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityContentInternalAbsContentContainer_initialize();
  BSBserValues *values = new_BSBserValues_initWithImActorModelDroidkitBserUtilSparseArray_(BSBserParser_deserializeWithBSDataInput_(new_BSDataInput_initWithByteArray_(data)));
  jint type = [values getIntWithInt:1];
  IOSByteArray *content = [values getBytesWithInt:2];
  if (type == ImActorModelEntityContentInternalAbsContentContainer_TYPE_LOCAL) {
    return new_ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(ImActorModelEntityContentInternalAbsLocalContent_loadContainerWithByteArray_(content));
  }
  else if (type == ImActorModelEntityContentInternalAbsContentContainer_TYPE_REMOTE) {
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(APMessage_fromBytesWithByteArray_(content));
  }
  else {
    @throw new_JavaIoIOException_initWithNSString_(@"Unknown type");
  }
}

void ImActorModelEntityContentInternalAbsContentContainer_init(ImActorModelEntityContentInternalAbsContentContainer *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentInternalAbsContentContainer)
