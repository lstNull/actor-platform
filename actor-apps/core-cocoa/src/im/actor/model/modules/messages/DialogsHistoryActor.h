//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/messages/DialogsHistoryActor.java
//

#ifndef _ImActorModelModulesMessagesDialogsHistoryActor_H_
#define _ImActorModelModulesMessagesDialogsHistoryActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@class ImActorModelModulesModules;

@interface ImActorModelModulesMessagesDialogsHistoryActor : ImActorModelModulesUtilsModuleActor

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsHistoryActor)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsHistoryActor_initWithImActorModelModulesModules_(ImActorModelModulesMessagesDialogsHistoryActor *self, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsHistoryActor *new_ImActorModelModulesMessagesDialogsHistoryActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsHistoryActor)

@interface ImActorModelModulesMessagesDialogsHistoryActor_LoadMore : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsHistoryActor_LoadMore)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsHistoryActor_LoadMore_init(ImActorModelModulesMessagesDialogsHistoryActor_LoadMore *self);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsHistoryActor_LoadMore *new_ImActorModelModulesMessagesDialogsHistoryActor_LoadMore_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsHistoryActor_LoadMore)

@interface ImActorModelModulesMessagesDialogsHistoryActor_LoadedMore : NSObject

#pragma mark Public

- (instancetype)initWithInt:(jint)loaded
                   withLong:(jlong)maxLoadedDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesDialogsHistoryActor_LoadedMore)

FOUNDATION_EXPORT void ImActorModelModulesMessagesDialogsHistoryActor_LoadedMore_initWithInt_withLong_(ImActorModelModulesMessagesDialogsHistoryActor_LoadedMore *self, jint loaded, jlong maxLoadedDate);

FOUNDATION_EXPORT ImActorModelModulesMessagesDialogsHistoryActor_LoadedMore *new_ImActorModelModulesMessagesDialogsHistoryActor_LoadedMore_initWithInt_withLong_(jint loaded, jlong maxLoadedDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesDialogsHistoryActor_LoadedMore)

#endif // _ImActorModelModulesMessagesDialogsHistoryActor_H_
