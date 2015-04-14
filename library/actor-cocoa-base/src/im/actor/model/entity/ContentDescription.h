//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/ContentDescription.java
//

#ifndef _AMContentDescription_H_
#define _AMContentDescription_H_

@class AMAbsContent;
@class AMContentTypeEnum;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface AMContentDescription : BSBserObject {
}

+ (AMContentDescription *)fromBytesWithByteArray:(IOSByteArray *)data;

+ (AMContentDescription *)fromContentWithAMAbsContent:(AMAbsContent *)msg;

- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType
                             withNSString:(NSString *)text
                                  withInt:(jint)relatedUser
                              withBoolean:(jboolean)isSilent;

- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType
                             withNSString:(NSString *)text;

- (instancetype)initWithAMContentTypeEnum:(AMContentTypeEnum *)contentType;

- (AMContentTypeEnum *)getContentType;

- (NSString *)getText;

- (jint)getRelatedUser;

- (jboolean)isSilent;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(AMContentDescription)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT AMContentDescription *AMContentDescription_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT AMContentDescription *AMContentDescription_fromContentWithAMAbsContent_(AMAbsContent *msg);
CF_EXTERN_C_END

typedef AMContentDescription ImActorModelEntityContentDescription;

J2OBJC_TYPE_LITERAL_HEADER(AMContentDescription)

#endif // _AMContentDescription_H_