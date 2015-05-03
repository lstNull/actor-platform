//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/SyncKeyValue.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/SyncKeyValue.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/engine/KeyValueStorage.h"
#include "im/actor/model/droidkit/engine/SyncKeyValue.h"

@interface DKSyncKeyValue () {
 @public
  id<DKKeyValueStorage> storage_;
}

@end

J2OBJC_FIELD_SETTER(DKSyncKeyValue, storage_, id<DKKeyValueStorage>)


#line 6
@implementation DKSyncKeyValue


#line 10
- (instancetype)initWithDKKeyValueStorage:(id<DKKeyValueStorage>)storage {
  DKSyncKeyValue_initWithDKKeyValueStorage_(self, storage);
  return self;
}


#line 14
- (void)putWithLong:(jlong)key
      withByteArray:(IOSByteArray *)data {
  @synchronized(self) {
    
#line 15
    [((id<DKKeyValueStorage>) nil_chk(storage_)) addOrUpdateItemWithLong:key withByteArray:data];
  }
}


#line 18
- (void)delete__WithLong:(jlong)key {
  @synchronized(self) {
    
#line 19
    [((id<DKKeyValueStorage>) nil_chk(storage_)) removeItemWithLong:key];
  }
}


#line 22
- (IOSByteArray *)getWithLong:(jlong)key {
  @synchronized(self) {
    
#line 23
    return [((id<DKKeyValueStorage>) nil_chk(storage_)) getValueWithLong:key];
  }
}

@end


#line 10
void DKSyncKeyValue_initWithDKKeyValueStorage_(DKSyncKeyValue *self, id<DKKeyValueStorage> storage) {
  (void) NSObject_init(self);
  
#line 11
  self->storage_ = storage;
}


#line 10
DKSyncKeyValue *new_DKSyncKeyValue_initWithDKKeyValueStorage_(id<DKKeyValueStorage> storage) {
  DKSyncKeyValue *self = [DKSyncKeyValue alloc];
  DKSyncKeyValue_initWithDKKeyValueStorage_(self, storage);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKSyncKeyValue)