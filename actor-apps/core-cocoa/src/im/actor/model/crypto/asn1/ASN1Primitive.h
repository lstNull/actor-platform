//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/im/actor/model/crypto/asn1/ASN1Primitive.java
//

#ifndef _BCASN1Primitive_H_
#define _BCASN1Primitive_H_

#include "J2ObjC_header.h"

@class BSDataOutput;
@class IOSByteArray;

#define BCASN1Primitive_TAG_BOOLEAN 1
#define BCASN1Primitive_TAG_INTEGER 2
#define BCASN1Primitive_TAG_BIT_STRING 3
#define BCASN1Primitive_TAG_OCTET_STRING 4
#define BCASN1Primitive_TAG_NULL 5
#define BCASN1Primitive_TAG_OBJECT_IDENTIFIER 6
#define BCASN1Primitive_TAG_EXTERNAL 8
#define BCASN1Primitive_TAG_ENUMERATED 10
#define BCASN1Primitive_TAG_SEQUENCE 16
#define BCASN1Primitive_TAG_SEQUENCE_OF 16
#define BCASN1Primitive_TAG_SET 17
#define BCASN1Primitive_TAG_SET_OF 17
#define BCASN1Primitive_TAG_NUMERIC_STRING 18
#define BCASN1Primitive_TAG_PRINTABLE_STRING 19
#define BCASN1Primitive_TAG_T61_STRING 20
#define BCASN1Primitive_TAG_VIDEOTEX_STRING 21
#define BCASN1Primitive_TAG_IA5_STRING 22
#define BCASN1Primitive_TAG_UTC_TIME 23
#define BCASN1Primitive_TAG_GENERALIZED_TIME 24
#define BCASN1Primitive_TAG_GRAPHIC_STRING 25
#define BCASN1Primitive_TAG_VISIBLE_STRING 26
#define BCASN1Primitive_TAG_GENERAL_STRING 27
#define BCASN1Primitive_TAG_UNIVERSAL_STRING 28
#define BCASN1Primitive_TAG_BMP_STRING 30
#define BCASN1Primitive_TAG_UTF8_STRING 12
#define BCASN1Primitive_TAG_CONSTRUCTED 32
#define BCASN1Primitive_TAG_APPLICATION 64
#define BCASN1Primitive_TAG_TAGGED 128

@interface BCASN1Primitive : NSObject

#pragma mark Public

- (instancetype)init;

- (IOSByteArray *)serialize;

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(BCASN1Primitive)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_BOOLEAN, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_INTEGER, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_BIT_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_OCTET_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_NULL, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_OBJECT_IDENTIFIER, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_EXTERNAL, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_ENUMERATED, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_SEQUENCE, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_SEQUENCE_OF, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_SET, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_SET_OF, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_NUMERIC_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_PRINTABLE_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_T61_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_VIDEOTEX_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_IA5_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_UTC_TIME, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_GENERALIZED_TIME, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_GRAPHIC_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_VISIBLE_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_GENERAL_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_UNIVERSAL_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_BMP_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_UTF8_STRING, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_CONSTRUCTED, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_APPLICATION, jint)

J2OBJC_STATIC_FIELD_GETTER(BCASN1Primitive, TAG_TAGGED, jint)

FOUNDATION_EXPORT void BCASN1Primitive_init(BCASN1Primitive *self);

J2OBJC_TYPE_LITERAL_HEADER(BCASN1Primitive)

typedef BCASN1Primitive ImActorModelCryptoAsn1ASN1Primitive;

#endif // _BCASN1Primitive_H_