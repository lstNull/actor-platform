//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/parser/BaseParser.java
//

#ifndef _APBaseParser_H_
#define _APBaseParser_H_

#include "J2ObjC_header.h"

@class IOSByteArray;

@interface APBaseParser : NSObject

#pragma mark Public

- (instancetype)init;

- (id)readWithInt:(jint)type
    withByteArray:(IOSByteArray *)payload;

@end

J2OBJC_EMPTY_STATIC_INIT(APBaseParser)

FOUNDATION_EXPORT void APBaseParser_init(APBaseParser *self);

J2OBJC_TYPE_LITERAL_HEADER(APBaseParser)

typedef APBaseParser ImActorModelNetworkParserBaseParser;

#endif // _APBaseParser_H_
