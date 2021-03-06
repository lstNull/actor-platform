//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/FileReference.java
//

#ifndef _AMFileReference_H_
#define _AMFileReference_H_

#include "J2ObjC_header.h"
#include "im/actor/model/entity/WrapperEntity.h"

@class APFileLocation;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface AMFileReference : AMWrapperEntity

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithAPFileLocation:(APFileLocation *)fileLocation
                          withNSString:(NSString *)fileName
                               withInt:(jint)fileSize;

- (jboolean)isEqual:(id)o;

- (jlong)getAccessHash;

- (jlong)getFileId;

- (APFileLocation *)getFileLocation;

- (NSString *)getFileName;

- (jint)getFileSize;

- (NSUInteger)hash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

#pragma mark Protected

- (APFileLocation *)createInstance;

@end

J2OBJC_EMPTY_STATIC_INIT(AMFileReference)

FOUNDATION_EXPORT void AMFileReference_initWithAPFileLocation_withNSString_withInt_(AMFileReference *self, APFileLocation *fileLocation, NSString *fileName, jint fileSize);

FOUNDATION_EXPORT AMFileReference *new_AMFileReference_initWithAPFileLocation_withNSString_withInt_(APFileLocation *fileLocation, NSString *fileName, jint fileSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMFileReference_initWithByteArray_(AMFileReference *self, IOSByteArray *data);

FOUNDATION_EXPORT AMFileReference *new_AMFileReference_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMFileReference)

typedef AMFileReference ImActorModelEntityFileReference;

#endif // _AMFileReference_H_
