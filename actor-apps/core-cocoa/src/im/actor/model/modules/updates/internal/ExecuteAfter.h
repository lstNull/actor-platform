//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/updates/internal/ExecuteAfter.java
//

#ifndef _ImActorModelModulesUpdatesInternalExecuteAfter_H_
#define _ImActorModelModulesUpdatesInternalExecuteAfter_H_

#include "J2ObjC_header.h"

@protocol JavaLangRunnable;

@interface ImActorModelModulesUpdatesInternalExecuteAfter : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)seq
       withJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (id<JavaLangRunnable>)getRunnable;

- (jint)getSeq;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesInternalExecuteAfter)

FOUNDATION_EXPORT void ImActorModelModulesUpdatesInternalExecuteAfter_initWithInt_withJavaLangRunnable_(ImActorModelModulesUpdatesInternalExecuteAfter *self, jint seq, id<JavaLangRunnable> runnable);

FOUNDATION_EXPORT ImActorModelModulesUpdatesInternalExecuteAfter *new_ImActorModelModulesUpdatesInternalExecuteAfter_initWithInt_withJavaLangRunnable_(jint seq, id<JavaLangRunnable> runnable) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesInternalExecuteAfter)

#endif // _ImActorModelModulesUpdatesInternalExecuteAfter_H_
