//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/Endpoints.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/ConnectionEndpoint.h"
#include "im/actor/model/network/Endpoints.h"

@interface AMEndpoints () {
 @public
  jint roundRobin_;
  IOSObjectArray *endpoints_;
}
@end

J2OBJC_FIELD_SETTER(AMEndpoints, endpoints_, IOSObjectArray *)

@implementation AMEndpoints

- (instancetype)initWithAMConnectionEndpointArray:(IOSObjectArray *)endpoints {
  if (self = [super init]) {
    roundRobin_ = 0;
    AMEndpoints_set_endpoints_(self, endpoints);
  }
  return self;
}

- (AMConnectionEndpoint *)fetchEndpoint {
  roundRobin_ = (roundRobin_ + 1) % ((IOSObjectArray *) nil_chk(endpoints_))->size_;
  return IOSObjectArray_Get(endpoints_, roundRobin_);
}

- (void)dealloc {
  RELEASE_(endpoints_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(AMEndpoints *)other {
  [super copyAllFieldsTo:other];
  other->roundRobin_ = roundRobin_;
  AMEndpoints_set_endpoints_(other, endpoints_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithAMConnectionEndpointArray:", "Endpoints", NULL, 0x1, NULL },
    { "fetchEndpoint", NULL, "Lim.actor.model.network.ConnectionEndpoint;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "roundRobin_", NULL, 0x2, "I", NULL,  },
    { "endpoints_", NULL, 0x2, "[Lim.actor.model.network.ConnectionEndpoint;", NULL,  },
  };
  static const J2ObjcClassInfo _AMEndpoints = { 1, "Endpoints", "im.actor.model.network", NULL, 0x1, 2, methods, 2, fields, 0, NULL};
  return &_AMEndpoints;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMEndpoints)
