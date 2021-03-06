//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-async-ui/src/main/java/im/actor/model/droidkit/engine/ListStorageDisplayEx.java
//

#ifndef _DKListStorageDisplayEx_H_
#define _DKListStorageDisplayEx_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/engine/ListStorage.h"

@class JavaLangLong;
@protocol JavaUtilList;

@protocol DKListStorageDisplayEx < DKListStorage, NSObject, JavaObject >

- (id<JavaUtilList>)loadBackwardWithSortKey:(JavaLangLong *)sortingKey
                                  withLimit:(jint)limit;

- (id<JavaUtilList>)loadForwardWithSortKey:(JavaLangLong *)sortingKey
                                 withLimit:(jint)limit;

- (id<JavaUtilList>)loadBackwardWithQuery:(NSString *)query
                              withSortKey:(JavaLangLong *)sortingKey
                                withLimit:(jint)limit;

- (id<JavaUtilList>)loadForwardWithQuery:(NSString *)query
                             withSortKey:(JavaLangLong *)sortingKey
                               withLimit:(jint)limit;

- (id<JavaUtilList>)loadCenterWithSortKey:(JavaLangLong *)centerSortKey
                                withLimit:(jint)limit;

@end

J2OBJC_EMPTY_STATIC_INIT(DKListStorageDisplayEx)

J2OBJC_TYPE_LITERAL_HEADER(DKListStorageDisplayEx)

#define ImActorModelDroidkitEngineListStorageDisplayEx DKListStorageDisplayEx

#endif // _DKListStorageDisplayEx_H_
