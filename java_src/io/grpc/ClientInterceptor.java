package io.grpc;
/* loaded from: classes.dex */
public interface ClientInterceptor {
    <ReqT, RespT> ClientCall<ReqT, RespT> interceptCall(MethodDescriptor<ReqT, RespT> methodDescriptor, CallOptions callOptions, Channel channel);
}
