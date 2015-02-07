//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/mailbox/collections/EnvelopeCollection.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/actors/mailbox/Envelope.h"
#include "com/droidkit/actors/mailbox/collections/EnvelopeCollection.h"
#include "com/droidkit/actors/mailbox/collections/EnvelopeRoot.h"
#include "com/droidkit/actors/mailbox/collections/ScheduledEnvelope.h"
#include "java/lang/ThreadLocal.h"
#include "java/util/Iterator.h"
#include "java/util/PriorityQueue.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"

@interface ComDroidkitActorsMailboxCollectionsEnvelopeCollection () {
 @public
  JavaUtilPriorityQueue *envelopes_;
  ComDroidkitActorsMailboxCollectionsEnvelopeRoot *root_;
  jint id__;
}
@end

J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeCollection, envelopes_, JavaUtilPriorityQueue *)
J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeCollection, root_, ComDroidkitActorsMailboxCollectionsEnvelopeRoot *)

@interface ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult () {
 @public
  ComDroidkitActorsMailboxCollectionsScheduledEnvelope *envelope__;
  jlong delay__;
}
- (instancetype)initWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:(ComDroidkitActorsMailboxCollectionsScheduledEnvelope *)envelope;
- (instancetype)initWithLong:(jlong)delay;
@end

J2OBJC_FIELD_SETTER(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult, envelope__, ComDroidkitActorsMailboxCollectionsScheduledEnvelope *)

BOOL ComDroidkitActorsMailboxCollectionsEnvelopeCollection_initialized = NO;

@implementation ComDroidkitActorsMailboxCollectionsEnvelopeCollection

JavaUtilConcurrentAtomicAtomicInteger * ComDroidkitActorsMailboxCollectionsEnvelopeCollection_NEXT_ID_;

- (instancetype)initWithComDroidkitActorsMailboxCollectionsEnvelopeRoot:(ComDroidkitActorsMailboxCollectionsEnvelopeRoot *)root {
  if (self = [super init]) {
    ComDroidkitActorsMailboxCollectionsEnvelopeCollection_setAndConsume_envelopes_(self, [[JavaUtilPriorityQueue alloc] initWithInt:ComDroidkitActorsMailboxCollectionsEnvelopeCollection_DEFAULT_QUEUE_SIZE withJavaUtilComparator:[[[ComDroidkitActorsMailboxCollectionsEnvelopeCollection_ScheduledEnvelopesComparator alloc] initWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:self] autorelease]]);
    self->id__ = [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_NEXT_ID_)) getAndIncrement];
    ComDroidkitActorsMailboxCollectionsEnvelopeCollection_set_root_(self, root);
    [((ComDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(self->root_)) attachCollectionWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:self];
  }
  return self;
}

- (jint)getId {
  return id__;
}

- (jlong)getTopKey {
  return [((JavaUtilPriorityQueue *) nil_chk(envelopes_)) size] > 0 ? [((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk([envelopes_ peek])) getKey] : 0;
}

- (jlong)putEnvelopeWithComDroidkitActorsMailboxEnvelope:(ComDroidkitActorsMailboxEnvelope *)envelope
                                                withLong:(jlong)time {
  jlong key = [((ComDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(root_)) buildKeyWithLong:time];
  jlong oldKey;
  @synchronized(envelopes_) {
    oldKey = [self getTopKey];
    [((JavaUtilPriorityQueue *) nil_chk(envelopes_)) offerWithId:[[[ComDroidkitActorsMailboxCollectionsScheduledEnvelope alloc] initWithLong:key withLong:time withComDroidkitActorsMailboxEnvelope:envelope] autorelease]];
  }
  if (oldKey != [self getTopKey]) {
    [root_ changedTopKeyWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:self];
  }
  return key;
}

- (void)removeEnvelopeWithComDroidkitActorsMailboxEnvelope:(ComDroidkitActorsMailboxEnvelope *)envelope
withComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator:(id<ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator>)comparator {
  jlong oldKey;
  @synchronized(envelopes_) {
    oldKey = [self getTopKey];
    id<JavaUtilIterator> iterator = [((JavaUtilPriorityQueue *) nil_chk(envelopes_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      if ([((id<ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator>) nil_chk(comparator)) equalsWithComDroidkitActorsMailboxEnvelope:[((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk([iterator next])) getEnvelope] withComDroidkitActorsMailboxEnvelope:envelope]) {
        [iterator remove];
      }
    }
  }
  if (oldKey != [((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk([envelopes_ peek])) getKey]) {
    [((ComDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(root_)) changedTopKeyWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:self];
  }
}

- (jlong)putEnvelopeOnceWithComDroidkitActorsMailboxEnvelope:(ComDroidkitActorsMailboxEnvelope *)envelope
                                                    withLong:(jlong)time
withComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator:(id<ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator>)comparator {
  jlong key = [((ComDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(root_)) buildKeyWithLong:time];
  jlong oldKey;
  @synchronized(envelopes_) {
    oldKey = [self getTopKey];
    id<JavaUtilIterator> iterator = [((JavaUtilPriorityQueue *) nil_chk(envelopes_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      if ([((id<ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator>) nil_chk(comparator)) equalsWithComDroidkitActorsMailboxEnvelope:[((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk([iterator next])) getEnvelope] withComDroidkitActorsMailboxEnvelope:envelope]) {
        [iterator remove];
      }
    }
    [envelopes_ offerWithId:[[[ComDroidkitActorsMailboxCollectionsScheduledEnvelope alloc] initWithLong:key withLong:time withComDroidkitActorsMailboxEnvelope:envelope] autorelease]];
  }
  if (oldKey != [self getTopKey]) {
    [root_ changedTopKeyWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:self];
  }
  return key;
}

- (ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *)fetchEnvelopeWithLong:(jlong)time {
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *result;
  jlong oldKey;
  @synchronized(envelopes_) {
    oldKey = [self getTopKey];
    if ([((JavaUtilPriorityQueue *) nil_chk(envelopes_)) isEmpty]) {
      return nil;
    }
    ComDroidkitActorsMailboxCollectionsScheduledEnvelope *envelope = [envelopes_ peek];
    if ([((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk(envelope)) getTime] <= time) {
      [envelopes_ poll];
      result = ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_envelopeWithComDroidkitActorsMailboxCollectionsScheduledEnvelope_(envelope);
    }
    else {
      result = ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_delayWithLong_([envelope getTime] - time);
    }
  }
  if (oldKey != [self getTopKey]) {
    [((ComDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(root_)) changedTopKeyWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:self];
  }
  return result;
}

- (void)clear {
  @synchronized(envelopes_) {
    [((JavaUtilPriorityQueue *) nil_chk(envelopes_)) clear];
  }
  [((ComDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(root_)) changedTopKeyWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:self];
}

- (jint)getSize {
  @synchronized(envelopes_) {
    return [((JavaUtilPriorityQueue *) nil_chk(envelopes_)) size];
  }
}

- (IOSObjectArray *)allEnvelopes {
  @synchronized(envelopes_) {
    IOSObjectArray *scheduledEnvelopes = [envelopes_ toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[((JavaUtilPriorityQueue *) nil_chk(envelopes_)) size] type:ComDroidkitActorsMailboxCollectionsScheduledEnvelope_class_()]];
    IOSObjectArray *res = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(scheduledEnvelopes))->size_ type:ComDroidkitActorsMailboxEnvelope_class_()];
    for (jint i = 0; i < res->size_; i++) {
      IOSObjectArray_Set(res, i, [((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk(IOSObjectArray_Get(scheduledEnvelopes, i))) getEnvelope]);
    }
    return res;
  }
}

- (void)dealloc {
  RELEASE_(envelopes_);
  RELEASE_(root_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComDroidkitActorsMailboxCollectionsEnvelopeCollection *)other {
  [super copyAllFieldsTo:other];
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_set_envelopes_(other, envelopes_);
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_set_root_(other, root_);
  other->id__ = id__;
}

+ (void)initialize {
  if (self == [ComDroidkitActorsMailboxCollectionsEnvelopeCollection class]) {
    JreStrongAssignAndConsume(&ComDroidkitActorsMailboxCollectionsEnvelopeCollection_NEXT_ID_, nil, [[JavaUtilConcurrentAtomicAtomicInteger alloc] initWithInt:1]);
    J2OBJC_SET_INITIALIZED(ComDroidkitActorsMailboxCollectionsEnvelopeCollection)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComDroidkitActorsMailboxCollectionsEnvelopeRoot:", "EnvelopeCollection", NULL, 0x1, NULL },
    { "getId", NULL, "I", 0x1, NULL },
    { "getTopKey", NULL, "J", 0x1, NULL },
    { "putEnvelopeWithComDroidkitActorsMailboxEnvelope:withLong:", "putEnvelope", "J", 0x1, NULL },
    { "removeEnvelopeWithComDroidkitActorsMailboxEnvelope:withComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator:", "removeEnvelope", "V", 0x1, NULL },
    { "putEnvelopeOnceWithComDroidkitActorsMailboxEnvelope:withLong:withComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator:", "putEnvelopeOnce", "J", 0x1, NULL },
    { "fetchEnvelopeWithLong:", "fetchEnvelope", "Lcom.droidkit.actors.mailbox.collections.EnvelopeCollection$FetchResult;", 0x1, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "getSize", NULL, "I", 0x1, NULL },
    { "allEnvelopes", NULL, "[Lcom.droidkit.actors.mailbox.Envelope;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NEXT_ID_", NULL, 0x1a, "Ljava.util.concurrent.atomic.AtomicInteger;", &ComDroidkitActorsMailboxCollectionsEnvelopeCollection_NEXT_ID_,  },
    { "DEFAULT_QUEUE_SIZE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComDroidkitActorsMailboxCollectionsEnvelopeCollection_DEFAULT_QUEUE_SIZE },
    { "envelopes_", NULL, 0x12, "Ljava.util.PriorityQueue;", NULL,  },
    { "root_", NULL, 0x2, "Lcom.droidkit.actors.mailbox.collections.EnvelopeRoot;", NULL,  },
    { "id__", "id", 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsMailboxCollectionsEnvelopeCollection = { 1, "EnvelopeCollection", "com.droidkit.actors.mailbox.collections", NULL, 0x1, 10, methods, 5, fields, 0, NULL};
  return &_ComDroidkitActorsMailboxCollectionsEnvelopeCollection;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsMailboxCollectionsEnvelopeCollection)

@interface ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator : NSObject
@end

@implementation ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "equalsWithComDroidkitActorsMailboxEnvelope:withComDroidkitActorsMailboxEnvelope:", "equals", "Z", 0x401, NULL },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator = { 1, "EnvelopeComparator", "com.droidkit.actors.mailbox.collections", "EnvelopeCollection", 0x201, 1, methods, 0, NULL, 0, NULL};
  return &_ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_EnvelopeComparator)

BOOL ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_initialized = NO;

@implementation ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult

JavaLangThreadLocal * ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_RESULT_CACHE_;

+ (ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *)envelopeWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:(ComDroidkitActorsMailboxCollectionsScheduledEnvelope *)envelope {
  return ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_envelopeWithComDroidkitActorsMailboxCollectionsScheduledEnvelope_(envelope);
}

+ (ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *)delayWithLong:(jlong)delay {
  return ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_delayWithLong_(delay);
}

- (instancetype)initWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:(ComDroidkitActorsMailboxCollectionsScheduledEnvelope *)envelope {
  if (self = [super init]) {
    ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_set_envelope__(self, envelope);
  }
  return self;
}

- (instancetype)initWithLong:(jlong)delay {
  if (self = [super init]) {
    self->delay__ = delay;
  }
  return self;
}

- (ComDroidkitActorsMailboxCollectionsScheduledEnvelope *)getEnvelope {
  return envelope__;
}

- (jlong)getDelay {
  return delay__;
}

- (void)updateWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:(ComDroidkitActorsMailboxCollectionsScheduledEnvelope *)envelope
                                                              withLong:(jlong)delay {
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_set_envelope__(self, envelope);
  self->delay__ = delay;
}

- (void)recycle {
  [((JavaLangThreadLocal *) nil_chk(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_RESULT_CACHE_)) setWithId:self];
}

- (void)dealloc {
  RELEASE_(envelope__);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *)other {
  [super copyAllFieldsTo:other];
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_set_envelope__(other, envelope__);
  other->delay__ = delay__;
}

+ (void)initialize {
  if (self == [ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult class]) {
    JreStrongAssignAndConsume(&ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_RESULT_CACHE_, nil, [[JavaLangThreadLocal alloc] init]);
    J2OBJC_SET_INITIALIZED(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "envelopeWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:", "envelope", "Lcom.droidkit.actors.mailbox.collections.EnvelopeCollection$FetchResult;", 0x9, NULL },
    { "delayWithLong:", "delay", "Lcom.droidkit.actors.mailbox.collections.EnvelopeCollection$FetchResult;", 0x9, NULL },
    { "initWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:", "FetchResult", NULL, 0x2, NULL },
    { "initWithLong:", "FetchResult", NULL, 0x2, NULL },
    { "getEnvelope", NULL, "Lcom.droidkit.actors.mailbox.collections.ScheduledEnvelope;", 0x1, NULL },
    { "getDelay", NULL, "J", 0x1, NULL },
    { "updateWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:withLong:", "update", "V", 0x1, NULL },
    { "recycle", NULL, "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "RESULT_CACHE_", NULL, 0xa, "Ljava.lang.ThreadLocal;", &ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_RESULT_CACHE_,  },
    { "envelope__", "envelope", 0x2, "Lcom.droidkit.actors.mailbox.collections.ScheduledEnvelope;", NULL,  },
    { "delay__", "delay", 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult = { 1, "FetchResult", "com.droidkit.actors.mailbox.collections", "EnvelopeCollection", 0x9, 8, methods, 3, fields, 0, NULL};
  return &_ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult;
}

@end

ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_envelopeWithComDroidkitActorsMailboxCollectionsScheduledEnvelope_(ComDroidkitActorsMailboxCollectionsScheduledEnvelope *envelope) {
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_init();
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *res = [((JavaLangThreadLocal *) nil_chk(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_RESULT_CACHE_)) get];
  if (res != nil) {
    [ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_RESULT_CACHE_ remove];
    [res updateWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:envelope withLong:0];
  }
  else {
    res = [[[ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult alloc] initWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:envelope] autorelease];
  }
  return res;
}

ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_delayWithLong_(jlong delay) {
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_init();
  ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *res = [((JavaLangThreadLocal *) nil_chk(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_RESULT_CACHE_)) get];
  if (res != nil) {
    [ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult_RESULT_CACHE_ remove];
    [res updateWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:nil withLong:delay];
  }
  else {
    res = [[[ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult alloc] initWithLong:delay] autorelease];
  }
  return res;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult)

@implementation ComDroidkitActorsMailboxCollectionsEnvelopeCollection_ScheduledEnvelopesComparator

- (jint)compareWithId:(ComDroidkitActorsMailboxCollectionsScheduledEnvelope *)lop
               withId:(ComDroidkitActorsMailboxCollectionsScheduledEnvelope *)rop {
  return (jint) ([((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk(lop)) getKey] - [((ComDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk(rop)) getKey]);
}

- (instancetype)initWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:(ComDroidkitActorsMailboxCollectionsEnvelopeCollection *)outer$ {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compareWithComDroidkitActorsMailboxCollectionsScheduledEnvelope:withComDroidkitActorsMailboxCollectionsScheduledEnvelope:", "compare", "I", 0x1, NULL },
    { "initWithComDroidkitActorsMailboxCollectionsEnvelopeCollection:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsMailboxCollectionsEnvelopeCollection_ScheduledEnvelopesComparator = { 1, "ScheduledEnvelopesComparator", "com.droidkit.actors.mailbox.collections", "EnvelopeCollection", 0x0, 2, methods, 0, NULL, 0, NULL};
  return &_ComDroidkitActorsMailboxCollectionsEnvelopeCollection_ScheduledEnvelopesComparator;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsMailboxCollectionsEnvelopeCollection_ScheduledEnvelopesComparator)
