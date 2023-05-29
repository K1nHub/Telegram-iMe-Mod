package io.grpc;

import com.google.common.base.Preconditions;
import io.grpc.ClientCall;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4.dex */
public class ClientInterceptors {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.grpc.ClientInterceptors$1 */
    /* loaded from: classes4.dex */
    public class C24651 implements ClientInterceptor {
    }

    public static Channel intercept(Channel channel, ClientInterceptor... clientInterceptorArr) {
        return intercept(channel, Arrays.asList(clientInterceptorArr));
    }

    public static Channel intercept(Channel channel, List<? extends ClientInterceptor> list) {
        Preconditions.checkNotNull(channel, "channel");
        for (ClientInterceptor clientInterceptor : list) {
            channel = new InterceptorChannel(channel, clientInterceptor, null);
        }
        return channel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class InterceptorChannel extends Channel {
        private final Channel channel;
        private final ClientInterceptor interceptor;

        /* synthetic */ InterceptorChannel(Channel channel, ClientInterceptor clientInterceptor, C24651 c24651) {
            this(channel, clientInterceptor);
        }

        private InterceptorChannel(Channel channel, ClientInterceptor clientInterceptor) {
            this.channel = channel;
            this.interceptor = (ClientInterceptor) Preconditions.checkNotNull(clientInterceptor, "interceptor");
        }

        @Override // io.grpc.Channel
        public <ReqT, RespT> ClientCall<ReqT, RespT> newCall(MethodDescriptor<ReqT, RespT> methodDescriptor, CallOptions callOptions) {
            return this.interceptor.interceptCall(methodDescriptor, callOptions, this.channel);
        }

        @Override // io.grpc.Channel
        public String authority() {
            return this.channel.authority();
        }
    }

    static {
        new ClientCall<Object, Object>() { // from class: io.grpc.ClientInterceptors.2
            @Override // io.grpc.ClientCall
            public void halfClose() {
            }

            @Override // io.grpc.ClientCall
            public void request(int i) {
            }

            @Override // io.grpc.ClientCall
            public void sendMessage(Object obj) {
            }

            @Override // io.grpc.ClientCall
            public void start(ClientCall.Listener<Object> listener, Metadata metadata) {
            }
        };
    }
}
