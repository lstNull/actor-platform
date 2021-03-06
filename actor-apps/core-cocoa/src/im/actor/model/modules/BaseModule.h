//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/BaseModule.java
//

#ifndef _ImActorModelModulesBaseModule_H_
#define _ImActorModelModulesBaseModule_H_

#include "J2ObjC_header.h"

@class AMPeer;
@class APRequest;
@class DKActorRef;
@class ImActorModelModulesModules;
@class ImActorModelModulesUpdates;
@protocol AMCryptoProvider;
@protocol AMRpcCallback;
@protocol AMStorageProvider;
@protocol DKKeyValueEngine;
@protocol DKPreferencesStorage;
@protocol JavaLangRunnable;

@interface ImActorModelModulesBaseModule : NSObject

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (DKActorRef *)conversationActorWithAMPeer:(AMPeer *)peer;

- (DKActorRef *)conversationHistoryActorWithAMPeer:(AMPeer *)peer;

- (id<AMCryptoProvider>)crypto;

- (DKActorRef *)dialogsActor;

- (DKActorRef *)dialogsHistoryActor;

- (id<DKKeyValueEngine>)groups;

- (ImActorModelModulesModules *)modules;

- (jint)myUid;

- (DKActorRef *)ownReadActor;

- (DKActorRef *)plainReceiveActor;

- (id<DKPreferencesStorage>)preferences;

- (void)requestWithAPRequest:(APRequest *)request;

- (void)requestWithAPRequest:(APRequest *)request
           withAMRpcCallback:(id<AMRpcCallback>)callback;

- (void)runOnUiThreadWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (DKActorRef *)sendActor;

- (id<AMStorageProvider>)storage;

- (ImActorModelModulesUpdates *)updates;

- (id<DKKeyValueEngine>)users;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesBaseModule)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_DIALOGS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_DIALOGS_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_USERS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_USERS_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_GROUPS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_GROUPS_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_DOWNLOADS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_DOWNLOADS_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_CONTACTS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_CONTACTS_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_NOTIFICATIONS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_NOTIFICATIONS_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_SEARCH_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_SEARCH_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_CHAT_PREFIX_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_CHAT_PREFIX_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_CHAT_MEDIA_PREFIX_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_CHAT_MEDIA_PREFIX_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_CHAT_IN_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_CHAT_IN_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_CHAT_OUT_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_CHAT_OUT_, NSString *)

FOUNDATION_EXPORT NSString *ImActorModelModulesBaseModule_STORAGE_CURSOR_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesBaseModule, STORAGE_CURSOR_, NSString *)

FOUNDATION_EXPORT void ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(ImActorModelModulesBaseModule *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesBaseModule *new_ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesBaseModule)

#endif // _ImActorModelModulesBaseModule_H_
