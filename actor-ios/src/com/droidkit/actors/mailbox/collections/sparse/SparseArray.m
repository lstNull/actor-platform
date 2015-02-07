//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/mailbox/collections/sparse/SparseArray.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/actors/mailbox/collections/sparse/ArrayUtils.h"
#include "com/droidkit/actors/mailbox/collections/sparse/ContainerHelpers.h"
#include "com/droidkit/actors/mailbox/collections/sparse/SparseArray.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"

__attribute__((unused)) static void ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(ComDroidkitActorsMailboxCollectionsSparseSparseArray *self);

@interface ComDroidkitActorsMailboxCollectionsSparseSparseArray () {
 @public
  jboolean mGarbage_;
  IOSIntArray *mKeys_;
  IOSObjectArray *mValues_;
  jint mSize_;
}

- (void)gc;
@end

J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsSparseSparseArray, mKeys_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsSparseSparseArray, mValues_, IOSObjectArray *)

BOOL ComDroidkitActorsMailboxCollectionsSparseSparseArray_initialized = NO;

@implementation ComDroidkitActorsMailboxCollectionsSparseSparseArray

id ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_;

- (instancetype)init {
  return [self initComDroidkitActorsMailboxCollectionsSparseSparseArrayWithInt:10];
}

- (instancetype)initComDroidkitActorsMailboxCollectionsSparseSparseArrayWithInt:(jint)initialCapacity {
  if (self = [super init]) {
    mGarbage_ = NO;
    if (initialCapacity == 0) {
      ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mKeys_(self, ComDroidkitActorsMailboxCollectionsSparseContainerHelpers_get_EMPTY_INTS_());
      ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mValues_(self, ComDroidkitActorsMailboxCollectionsSparseContainerHelpers_get_EMPTY_OBJECTS_());
    }
    else {
      initialCapacity = ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealIntArraySizeWithInt_(initialCapacity);
      ComDroidkitActorsMailboxCollectionsSparseSparseArray_setAndConsume_mKeys_(self, [IOSIntArray newArrayWithLength:initialCapacity]);
      ComDroidkitActorsMailboxCollectionsSparseSparseArray_setAndConsume_mValues_(self, [IOSObjectArray newArrayWithLength:initialCapacity type:NSObject_class_()]);
    }
    mSize_ = 0;
  }
  return self;
}

- (instancetype)initWithInt:(jint)initialCapacity {
  return [self initComDroidkitActorsMailboxCollectionsSparseSparseArrayWithInt:initialCapacity];
}

- (ComDroidkitActorsMailboxCollectionsSparseSparseArray *)clone {
  ComDroidkitActorsMailboxCollectionsSparseSparseArray *clone = nil;
  @try {
    clone = (ComDroidkitActorsMailboxCollectionsSparseSparseArray *) check_class_cast([super clone], [ComDroidkitActorsMailboxCollectionsSparseSparseArray class]);
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mKeys_(nil_chk(clone), [((IOSIntArray *) nil_chk(mKeys_)) clone]);
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mValues_(clone, [((IOSObjectArray *) nil_chk(mValues_)) clone]);
  }
  @catch (JavaLangCloneNotSupportedException *cnse) {
  }
  return clone;
}

- (id)getWithInt:(jint)key {
  return [self getWithInt:key withId:nil];
}

- (id)getWithInt:(jint)key
          withId:(id)valueIfKeyNotFound {
  jint i = ComDroidkitActorsMailboxCollectionsSparseContainerHelpers_binarySearchWithIntArray_withInt_withInt_(mKeys_, mSize_, key);
  if (i < 0 || IOSObjectArray_Get(nil_chk(mValues_), i) == ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_) {
    return valueIfKeyNotFound;
  }
  else {
    return (id) IOSObjectArray_Get(mValues_, i);
  }
}

- (void)delete__WithInt:(jint)key {
  jint i = ComDroidkitActorsMailboxCollectionsSparseContainerHelpers_binarySearchWithIntArray_withInt_withInt_(mKeys_, mSize_, key);
  if (i >= 0) {
    if (IOSObjectArray_Get(nil_chk(mValues_), i) != ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_) {
      IOSObjectArray_Set(mValues_, i, ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_);
      mGarbage_ = YES;
    }
  }
}

- (void)removeWithInt:(jint)key {
  [self delete__WithInt:key];
}

- (void)removeAtWithInt:(jint)index {
  if (IOSObjectArray_Get(nil_chk(mValues_), index) != ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_) {
    IOSObjectArray_Set(mValues_, index, ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_);
    mGarbage_ = YES;
  }
}

- (void)removeAtRangeWithInt:(jint)index
                     withInt:(jint)size {
  jint end = JavaLangMath_minWithInt_withInt_(mSize_, index + size);
  for (jint i = index; i < end; i++) {
    [self removeAtWithInt:i];
  }
}

- (void)gc {
  ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
}

- (void)putWithInt:(jint)key
            withId:(id)value {
  jint i = ComDroidkitActorsMailboxCollectionsSparseContainerHelpers_binarySearchWithIntArray_withInt_withInt_(mKeys_, mSize_, key);
  if (i >= 0) {
    IOSObjectArray_Set(nil_chk(mValues_), i, value);
  }
  else {
    i = ~i;
    if (i < mSize_ && IOSObjectArray_Get(nil_chk(mValues_), i) == ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_) {
      *IOSIntArray_GetRef(nil_chk(mKeys_), i) = key;
      IOSObjectArray_Set(mValues_, i, value);
      return;
    }
    if (mGarbage_ && mSize_ >= ((IOSIntArray *) nil_chk(mKeys_))->size_) {
      ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
      i = ~ComDroidkitActorsMailboxCollectionsSparseContainerHelpers_binarySearchWithIntArray_withInt_withInt_(mKeys_, mSize_, key);
    }
    if (mSize_ >= ((IOSIntArray *) nil_chk(mKeys_))->size_) {
      jint n = ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealIntArraySizeWithInt_(mSize_ + 1);
      IOSIntArray *nkeys = [IOSIntArray arrayWithLength:n];
      IOSObjectArray *nvalues = [IOSObjectArray arrayWithLength:n type:NSObject_class_()];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mKeys_, 0, nkeys, 0, mKeys_->size_);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mValues_, 0, nvalues, 0, ((IOSObjectArray *) nil_chk(mValues_))->size_);
      ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mKeys_(self, nkeys);
      ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mValues_(self, nvalues);
    }
    if (mSize_ - i != 0) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mKeys_, i, mKeys_, i + 1, mSize_ - i);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mValues_, i, mValues_, i + 1, mSize_ - i);
    }
    *IOSIntArray_GetRef(mKeys_, i) = key;
    IOSObjectArray_Set(nil_chk(mValues_), i, value);
    mSize_++;
  }
}

- (jint)size {
  if (mGarbage_) {
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
  }
  return mSize_;
}

- (jint)keyAtWithInt:(jint)index {
  if (mGarbage_) {
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
  }
  return IOSIntArray_Get(nil_chk(mKeys_), index);
}

- (id)valueAtWithInt:(jint)index {
  if (mGarbage_) {
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
  }
  return (id) IOSObjectArray_Get(nil_chk(mValues_), index);
}

- (void)setValueAtWithInt:(jint)index
                   withId:(id)value {
  if (mGarbage_) {
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
  }
  IOSObjectArray_Set(nil_chk(mValues_), index, value);
}

- (jint)indexOfKeyWithInt:(jint)key {
  if (mGarbage_) {
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
  }
  return ComDroidkitActorsMailboxCollectionsSparseContainerHelpers_binarySearchWithIntArray_withInt_withInt_(mKeys_, mSize_, key);
}

- (jboolean)containsKeyWithInt:(jint)key {
  return [self indexOfKeyWithInt:key] >= 0;
}

- (jint)indexOfValueWithId:(id)value {
  if (mGarbage_) {
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
  }
  for (jint i = 0; i < mSize_; i++) if (IOSObjectArray_Get(nil_chk(mValues_), i) == value) return i;
  return -1;
}

- (void)clear {
  jint n = mSize_;
  IOSObjectArray *values = mValues_;
  for (jint i = 0; i < n; i++) {
    IOSObjectArray_Set(nil_chk(values), i, nil);
  }
  mSize_ = 0;
  mGarbage_ = NO;
}

- (void)appendWithInt:(jint)key
               withId:(id)value {
  if (mSize_ != 0 && key <= IOSIntArray_Get(nil_chk(mKeys_), mSize_ - 1)) {
    [self putWithInt:key withId:value];
    return;
  }
  if (mGarbage_ && mSize_ >= ((IOSIntArray *) nil_chk(mKeys_))->size_) {
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(self);
  }
  jint pos = mSize_;
  if (pos >= ((IOSIntArray *) nil_chk(mKeys_))->size_) {
    jint n = ComDroidkitActorsMailboxCollectionsSparseArrayUtils_idealIntArraySizeWithInt_(pos + 1);
    IOSIntArray *nkeys = [IOSIntArray arrayWithLength:n];
    IOSObjectArray *nvalues = [IOSObjectArray arrayWithLength:n type:NSObject_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mKeys_, 0, nkeys, 0, mKeys_->size_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mValues_, 0, nvalues, 0, ((IOSObjectArray *) nil_chk(mValues_))->size_);
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mKeys_(self, nkeys);
    ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mValues_(self, nvalues);
  }
  *IOSIntArray_GetRef(mKeys_, pos) = key;
  IOSObjectArray_Set(nil_chk(mValues_), pos, value);
  mSize_ = pos + 1;
}

- (NSString *)description {
  if ([self size] <= 0) {
    return @"{}";
  }
  JavaLangStringBuilder *buffer = [[[JavaLangStringBuilder alloc] initWithInt:mSize_ * 28] autorelease];
  [buffer appendWithChar:'{'];
  for (jint i = 0; i < mSize_; i++) {
    if (i > 0) {
      [buffer appendWithNSString:@", "];
    }
    jint key = [self keyAtWithInt:i];
    [buffer appendWithInt:key];
    [buffer appendWithChar:'='];
    id value = [self valueAtWithInt:i];
    if (value != self) {
      [buffer appendWithId:value];
    }
    else {
      [buffer appendWithNSString:@"(this Map)"];
    }
  }
  [buffer appendWithChar:'}'];
  return [buffer description];
}

- (void)dealloc {
  RELEASE_(mKeys_);
  RELEASE_(mValues_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComDroidkitActorsMailboxCollectionsSparseSparseArray *)other {
  [super copyAllFieldsTo:other];
  other->mGarbage_ = mGarbage_;
  ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mKeys_(other, mKeys_);
  ComDroidkitActorsMailboxCollectionsSparseSparseArray_set_mValues_(other, mValues_);
  other->mSize_ = mSize_;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (void)initialize {
  if (self == [ComDroidkitActorsMailboxCollectionsSparseSparseArray class]) {
    JreStrongAssignAndConsume(&ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_, nil, [[NSObject alloc] init]);
    J2OBJC_SET_INITIALIZED(ComDroidkitActorsMailboxCollectionsSparseSparseArray)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SparseArray", NULL, 0x1, NULL },
    { "initWithInt:", "SparseArray", NULL, 0x1, NULL },
    { "clone", NULL, "Lcom.droidkit.actors.mailbox.collections.sparse.SparseArray;", 0x1, NULL },
    { "getWithInt:", "get", "TE;", 0x1, NULL },
    { "getWithInt:withId:", "get", "TE;", 0x1, NULL },
    { "delete__WithInt:", "delete", "V", 0x1, NULL },
    { "removeWithInt:", "remove", "V", 0x1, NULL },
    { "removeAtWithInt:", "removeAt", "V", 0x1, NULL },
    { "removeAtRangeWithInt:withInt:", "removeAtRange", "V", 0x1, NULL },
    { "gc", NULL, "V", 0x2, NULL },
    { "putWithInt:withId:", "put", "V", 0x1, NULL },
    { "size", NULL, "I", 0x1, NULL },
    { "keyAtWithInt:", "keyAt", "I", 0x1, NULL },
    { "valueAtWithInt:", "valueAt", "TE;", 0x1, NULL },
    { "setValueAtWithInt:withId:", "setValueAt", "V", 0x1, NULL },
    { "indexOfKeyWithInt:", "indexOfKey", "I", 0x1, NULL },
    { "containsKeyWithInt:", "containsKey", "Z", 0x1, NULL },
    { "indexOfValueWithId:", "indexOfValue", "I", 0x1, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "appendWithInt:withId:", "append", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DELETED_", NULL, 0x1a, "Ljava.lang.Object;", &ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_,  },
    { "mGarbage_", NULL, 0x2, "Z", NULL,  },
    { "mKeys_", NULL, 0x2, "[I", NULL,  },
    { "mValues_", NULL, 0x2, "[Ljava.lang.Object;", NULL,  },
    { "mSize_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsMailboxCollectionsSparseSparseArray = { 1, "SparseArray", "com.droidkit.actors.mailbox.collections.sparse", NULL, 0x1, 21, methods, 5, fields, 0, NULL};
  return &_ComDroidkitActorsMailboxCollectionsSparseSparseArray;
}

@end

void ComDroidkitActorsMailboxCollectionsSparseSparseArray_gc(ComDroidkitActorsMailboxCollectionsSparseSparseArray *self) {
  jint n = self->mSize_;
  jint o = 0;
  IOSIntArray *keys = self->mKeys_;
  IOSObjectArray *values = self->mValues_;
  for (jint i = 0; i < n; i++) {
    id val = IOSObjectArray_Get(nil_chk(values), i);
    if (val != ComDroidkitActorsMailboxCollectionsSparseSparseArray_DELETED_) {
      if (i != o) {
        *IOSIntArray_GetRef(nil_chk(keys), o) = IOSIntArray_Get(keys, i);
        IOSObjectArray_Set(values, o, val);
        IOSObjectArray_Set(values, i, nil);
      }
      o++;
    }
  }
  self->mGarbage_ = NO;
  self->mSize_ = o;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsMailboxCollectionsSparseSparseArray)
