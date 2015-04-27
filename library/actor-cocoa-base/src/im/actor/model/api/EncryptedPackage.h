//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/EncryptedPackage.java
//

#ifndef _ImActorModelApiEncryptedPackage_H_
#define _ImActorModelApiEncryptedPackage_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class JavaLangInteger;
@class JavaLangLong;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiEncryptedPackage : BSBserObject {
}

- (instancetype)initWithJavaLangInteger:(JavaLangInteger *)v1MessageType
                          withByteArray:(IOSByteArray *)v1Message
                       withJavaLangLong:(JavaLangLong *)v1Crc32
                          withByteArray:(IOSByteArray *)v2Message
                       withJavaLangLong:(JavaLangLong *)v2HmacSha256;

- (instancetype)init;

- (JavaLangInteger *)getV1MessageType;

- (IOSByteArray *)getV1Message;

- (JavaLangLong *)getV1Crc32;

- (IOSByteArray *)getV2Message;

- (JavaLangLong *)getV2HmacSha256;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiEncryptedPackage)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiEncryptedPackage)

#endif // _ImActorModelApiEncryptedPackage_H_