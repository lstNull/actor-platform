//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/ContentDescription.java
//

#ifndef _AMContentDescription_H_
#define _AMContentDescription_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class AMAbsContent;
@class AMContentTypeEnum;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface AMContentDescription : BSBserObject

#pragma mark Public

- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType;

- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType
                             withNSString:(NSString *)text;

- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType
                             withNSString:(NSString *)text
                                  withInt:(jint)relatedUser
                              withBoolean:(jboolean)isSilent;

+ (AMContentDescription *)fromBytesWithByteArray:(IOSByteArray *)data;

+ (AMContentDescription *)fromContentWithAMAbsContent:(AMAbsContent *)msg;

- (AMContentTypeEnum *)getContentType;

- (jint)getRelatedUser;

- (NSString *)getText;

- (jboolean)isSilent;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(AMContentDescription)

FOUNDATION_EXPORT AMContentDescription *AMContentDescription_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT AMContentDescription *AMContentDescription_fromContentWithAMAbsContent_(AMAbsContent *msg);

FOUNDATION_EXPORT void AMContentDescription_initWithAMContentTypeEnum_withNSString_withInt_withBoolean_(AMContentDescription *self, AMContentTypeEnum *contentType, NSString *text, jint relatedUser, jboolean isSilent);

FOUNDATION_EXPORT AMContentDescription *new_AMContentDescription_initWithAMContentTypeEnum_withNSString_withInt_withBoolean_(AMContentTypeEnum *contentType, NSString *text, jint relatedUser, jboolean isSilent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMContentDescription_initWithAMContentTypeEnum_withNSString_(AMContentDescription *self, AMContentTypeEnum *contentType, NSString *text);

FOUNDATION_EXPORT AMContentDescription *new_AMContentDescription_initWithAMContentTypeEnum_withNSString_(AMContentTypeEnum *contentType, NSString *text) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMContentDescription_initWithAMContentTypeEnum_(AMContentDescription *self, AMContentTypeEnum *contentType);

FOUNDATION_EXPORT AMContentDescription *new_AMContentDescription_initWithAMContentTypeEnum_(AMContentTypeEnum *contentType) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMContentDescription)

typedef AMContentDescription ImActorModelEntityContentDescription;

#endif // _AMContentDescription_H_
