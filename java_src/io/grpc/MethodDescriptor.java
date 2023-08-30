package io.grpc;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes4.dex */
public final class MethodDescriptor<ReqT, RespT> {
    private final String fullMethodName;
    private final boolean idempotent;
    private final Marshaller<ReqT> requestMarshaller;
    private final Marshaller<RespT> responseMarshaller;
    private final boolean safe;
    private final boolean sampledToLocalTracing;
    private final Object schemaDescriptor;
    private final String serviceName;
    private final MethodType type;

    /* loaded from: classes4.dex */
    public interface Marshaller<T> {
        T parse(InputStream inputStream);

        InputStream stream(T t);
    }

    /* loaded from: classes4.dex */
    public enum MethodType {
        UNARY,
        CLIENT_STREAMING,
        SERVER_STREAMING,
        BIDI_STREAMING,
        UNKNOWN;

        public final boolean clientSendsOneMessage() {
            return this == UNARY || this == SERVER_STREAMING;
        }

        public final boolean serverSendsOneMessage() {
            return this == UNARY || this == CLIENT_STREAMING;
        }
    }

    private MethodDescriptor(MethodType methodType, String str, Marshaller<ReqT> marshaller, Marshaller<RespT> marshaller2, Object obj, boolean z, boolean z2, boolean z3) {
        new AtomicReferenceArray(2);
        this.type = (MethodType) Preconditions.checkNotNull(methodType, SessionDescription.ATTR_TYPE);
        this.fullMethodName = (String) Preconditions.checkNotNull(str, "fullMethodName");
        this.serviceName = extractFullServiceName(str);
        this.requestMarshaller = (Marshaller) Preconditions.checkNotNull(marshaller, "requestMarshaller");
        this.responseMarshaller = (Marshaller) Preconditions.checkNotNull(marshaller2, "responseMarshaller");
        this.schemaDescriptor = obj;
        this.idempotent = z;
        this.safe = z2;
        this.sampledToLocalTracing = z3;
    }

    public MethodType getType() {
        return this.type;
    }

    public String getFullMethodName() {
        return this.fullMethodName;
    }

    public String getServiceName() {
        return this.serviceName;
    }

    public RespT parseResponse(InputStream inputStream) {
        return this.responseMarshaller.parse(inputStream);
    }

    public InputStream streamRequest(ReqT reqt) {
        return this.requestMarshaller.stream(reqt);
    }

    public boolean isSafe() {
        return this.safe;
    }

    public static String generateFullMethodName(String str, String str2) {
        return ((String) Preconditions.checkNotNull(str, "fullServiceName")) + "/" + ((String) Preconditions.checkNotNull(str2, "methodName"));
    }

    public static String extractFullServiceName(String str) {
        int lastIndexOf = ((String) Preconditions.checkNotNull(str, "fullMethodName")).lastIndexOf(47);
        if (lastIndexOf == -1) {
            return null;
        }
        return str.substring(0, lastIndexOf);
    }

    public static <ReqT, RespT> Builder<ReqT, RespT> newBuilder() {
        return newBuilder(null, null);
    }

    public static <ReqT, RespT> Builder<ReqT, RespT> newBuilder(Marshaller<ReqT> marshaller, Marshaller<RespT> marshaller2) {
        return new Builder().setRequestMarshaller(marshaller).setResponseMarshaller(marshaller2);
    }

    /* loaded from: classes4.dex */
    public static final class Builder<ReqT, RespT> {
        private String fullMethodName;
        private boolean idempotent;
        private Marshaller<ReqT> requestMarshaller;
        private Marshaller<RespT> responseMarshaller;
        private boolean safe;
        private boolean sampledToLocalTracing;
        private Object schemaDescriptor;
        private MethodType type;

        private Builder() {
        }

        public Builder<ReqT, RespT> setRequestMarshaller(Marshaller<ReqT> marshaller) {
            this.requestMarshaller = marshaller;
            return this;
        }

        public Builder<ReqT, RespT> setResponseMarshaller(Marshaller<RespT> marshaller) {
            this.responseMarshaller = marshaller;
            return this;
        }

        public Builder<ReqT, RespT> setType(MethodType methodType) {
            this.type = methodType;
            return this;
        }

        public Builder<ReqT, RespT> setFullMethodName(String str) {
            this.fullMethodName = str;
            return this;
        }

        public Builder<ReqT, RespT> setSampledToLocalTracing(boolean z) {
            this.sampledToLocalTracing = z;
            return this;
        }

        public MethodDescriptor<ReqT, RespT> build() {
            return new MethodDescriptor<>(this.type, this.fullMethodName, this.requestMarshaller, this.responseMarshaller, this.schemaDescriptor, this.idempotent, this.safe, this.sampledToLocalTracing);
        }
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("fullMethodName", this.fullMethodName).add(SessionDescription.ATTR_TYPE, this.type).add("idempotent", this.idempotent).add("safe", this.safe).add("sampledToLocalTracing", this.sampledToLocalTracing).add("requestMarshaller", this.requestMarshaller).add("responseMarshaller", this.responseMarshaller).add("schemaDescriptor", this.schemaDescriptor).omitNullValues().toString();
    }
}
