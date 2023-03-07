package com.google.firestore.p022v1;

import io.grpc.CallOptions;
import io.grpc.Channel;
import io.grpc.MethodDescriptor;
import io.grpc.protobuf.lite.ProtoLiteUtils;
import io.grpc.stub.AbstractAsyncStub;
import io.grpc.stub.AbstractStub;
/* renamed from: com.google.firestore.v1.FirestoreGrpc */
/* loaded from: classes3.dex */
public final class FirestoreGrpc {
    private static volatile MethodDescriptor<ListenRequest, ListenResponse> getListenMethod;
    private static volatile MethodDescriptor<WriteRequest, WriteResponse> getWriteMethod;

    private FirestoreGrpc() {
    }

    public static MethodDescriptor<WriteRequest, WriteResponse> getWriteMethod() {
        MethodDescriptor<WriteRequest, WriteResponse> methodDescriptor = getWriteMethod;
        if (methodDescriptor == null) {
            synchronized (FirestoreGrpc.class) {
                methodDescriptor = getWriteMethod;
                if (methodDescriptor == null) {
                    methodDescriptor = MethodDescriptor.newBuilder().setType(MethodDescriptor.MethodType.BIDI_STREAMING).setFullMethodName(MethodDescriptor.generateFullMethodName("google.firestore.v1.Firestore", "Write")).setSampledToLocalTracing(true).setRequestMarshaller(ProtoLiteUtils.marshaller(WriteRequest.getDefaultInstance())).setResponseMarshaller(ProtoLiteUtils.marshaller(WriteResponse.getDefaultInstance())).build();
                    getWriteMethod = methodDescriptor;
                }
            }
        }
        return methodDescriptor;
    }

    public static MethodDescriptor<ListenRequest, ListenResponse> getListenMethod() {
        MethodDescriptor<ListenRequest, ListenResponse> methodDescriptor = getListenMethod;
        if (methodDescriptor == null) {
            synchronized (FirestoreGrpc.class) {
                methodDescriptor = getListenMethod;
                if (methodDescriptor == null) {
                    methodDescriptor = MethodDescriptor.newBuilder().setType(MethodDescriptor.MethodType.BIDI_STREAMING).setFullMethodName(MethodDescriptor.generateFullMethodName("google.firestore.v1.Firestore", "Listen")).setSampledToLocalTracing(true).setRequestMarshaller(ProtoLiteUtils.marshaller(ListenRequest.getDefaultInstance())).setResponseMarshaller(ProtoLiteUtils.marshaller(ListenResponse.getDefaultInstance())).build();
                    getListenMethod = methodDescriptor;
                }
            }
        }
        return methodDescriptor;
    }

    public static FirestoreStub newStub(Channel channel) {
        return (FirestoreStub) AbstractAsyncStub.newStub(new AbstractStub.StubFactory<FirestoreStub>() { // from class: com.google.firestore.v1.FirestoreGrpc.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.grpc.stub.AbstractStub.StubFactory
            public FirestoreStub newStub(Channel channel2, CallOptions callOptions) {
                return new FirestoreStub(channel2, callOptions);
            }
        }, channel);
    }

    /* renamed from: com.google.firestore.v1.FirestoreGrpc$FirestoreStub */
    /* loaded from: classes3.dex */
    public static final class FirestoreStub extends AbstractAsyncStub<FirestoreStub> {
        private FirestoreStub(Channel channel, CallOptions callOptions) {
            super(channel, callOptions);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.stub.AbstractStub
        public FirestoreStub build(Channel channel, CallOptions callOptions) {
            return new FirestoreStub(channel, callOptions);
        }
    }
}
