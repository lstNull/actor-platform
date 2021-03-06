//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/base/FatSeqUpdate.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/base/FatSeqUpdate.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "im/actor/model/network/parser/RpcScope.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiBaseFatSeqUpdate () {
 @public
  jint seq_;
  IOSByteArray *state_;
  jint updateHeader_;
  IOSByteArray *update_;
  id<JavaUtilList> users_;
  id<JavaUtilList> groups_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, state_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, update_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiBaseFatSeqUpdate, groups_, id<JavaUtilList>)

@implementation ImActorModelApiBaseFatSeqUpdate

+ (ImActorModelApiBaseFatSeqUpdate *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiBaseFatSeqUpdate_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
                    withInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update
           withJavaUtilList:(id<JavaUtilList>)users
           withJavaUtilList:(id<JavaUtilList>)groups {
  ImActorModelApiBaseFatSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_withJavaUtilList_withJavaUtilList_(self, seq, state, updateHeader, update, users, groups);
  return self;
}

- (instancetype)init {
  ImActorModelApiBaseFatSeqUpdate_init(self);
  return self;
}

- (jint)getSeq {
  return self->seq_;
}

- (IOSByteArray *)getState {
  return self->state_;
}

- (jint)getUpdateHeader {
  return self->updateHeader_;
}

- (IOSByteArray *)getUpdate {
  return self->update_;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (id<JavaUtilList>)getGroups {
  return self->groups_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->seq_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->state_ = [values getBytesWithInt:2];
  self->updateHeader_ = [values getIntWithInt:3];
  self->update_ = [values getBytesWithInt:4];
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:5]; i++) {
    [_users addWithId:new_APUser_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:5 withJavaUtilList:_users];
  id<JavaUtilList> _groups = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [values getRepeatedCountWithInt:6]; i++) {
    [_groups addWithId:new_APGroup_init()];
  }
  self->groups_ = [values getRepeatedObjWithInt:6 withJavaUtilList:_groups];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->state_];
  [writer writeIntWithInt:3 withInt:self->updateHeader_];
  if (self->update_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:4 withByteArray:self->update_];
  [writer writeRepeatedObjWithInt:5 withJavaUtilList:self->users_];
  [writer writeRepeatedObjWithInt:6 withJavaUtilList:self->groups_];
}

- (NSString *)description {
  NSString *res = @"update box FatSeqUpdate{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"seq=", self->seq_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", state=", BSUtils_byteArrayToStringCompactWithByteArray_(self->state_)));
  res = JreStrcat("$$", res, JreStrcat("$I", @", updateHeader=", self->updateHeader_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", update=", BSUtils_byteArrayToStringCompactWithByteArray_(self->update_)));
  res = JreStrcat("$$", res, JreStrcat("$I", @", users=", [((id<JavaUtilList>) nil_chk(self->users_)) size]));
  res = JreStrcat("$$", res, JreStrcat("$I", @", groups=", [((id<JavaUtilList>) nil_chk(self->groups_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiBaseFatSeqUpdate_HEADER;
}

@end

ImActorModelApiBaseFatSeqUpdate *ImActorModelApiBaseFatSeqUpdate_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiBaseFatSeqUpdate_initialize();
  return ((ImActorModelApiBaseFatSeqUpdate *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiBaseFatSeqUpdate_init(), data));
}

void ImActorModelApiBaseFatSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_withJavaUtilList_withJavaUtilList_(ImActorModelApiBaseFatSeqUpdate *self, jint seq, IOSByteArray *state, jint updateHeader, IOSByteArray *update, id<JavaUtilList> users, id<JavaUtilList> groups) {
  (void) APRpcScope_init(self);
  self->seq_ = seq;
  self->state_ = state;
  self->updateHeader_ = updateHeader;
  self->update_ = update;
  self->users_ = users;
  self->groups_ = groups;
}

ImActorModelApiBaseFatSeqUpdate *new_ImActorModelApiBaseFatSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_withJavaUtilList_withJavaUtilList_(jint seq, IOSByteArray *state, jint updateHeader, IOSByteArray *update, id<JavaUtilList> users, id<JavaUtilList> groups) {
  ImActorModelApiBaseFatSeqUpdate *self = [ImActorModelApiBaseFatSeqUpdate alloc];
  ImActorModelApiBaseFatSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_withJavaUtilList_withJavaUtilList_(self, seq, state, updateHeader, update, users, groups);
  return self;
}

void ImActorModelApiBaseFatSeqUpdate_init(ImActorModelApiBaseFatSeqUpdate *self) {
  (void) APRpcScope_init(self);
}

ImActorModelApiBaseFatSeqUpdate *new_ImActorModelApiBaseFatSeqUpdate_init() {
  ImActorModelApiBaseFatSeqUpdate *self = [ImActorModelApiBaseFatSeqUpdate alloc];
  ImActorModelApiBaseFatSeqUpdate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiBaseFatSeqUpdate)
