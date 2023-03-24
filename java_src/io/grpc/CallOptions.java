package io.grpc;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import io.grpc.ClientStreamTracer;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class CallOptions {
    public static final CallOptions DEFAULT = new CallOptions();
    private String authority;
    private String compressorName;
    private CallCredentials credentials;
    private Object[][] customOptions;
    private Deadline deadline;
    private Executor executor;
    private Integer maxInboundMessageSize;
    private Integer maxOutboundMessageSize;
    private List<ClientStreamTracer.Factory> streamTracerFactories;
    private Boolean waitForReady;

    public CallOptions withCallCredentials(CallCredentials callCredentials) {
        CallOptions callOptions = new CallOptions(this);
        callOptions.credentials = callCredentials;
        return callOptions;
    }

    public CallOptions withDeadline(Deadline deadline) {
        CallOptions callOptions = new CallOptions(this);
        callOptions.deadline = deadline;
        return callOptions;
    }

    public Deadline getDeadline() {
        return this.deadline;
    }

    public CallOptions withWaitForReady() {
        CallOptions callOptions = new CallOptions(this);
        callOptions.waitForReady = Boolean.TRUE;
        return callOptions;
    }

    public CallOptions withoutWaitForReady() {
        CallOptions callOptions = new CallOptions(this);
        callOptions.waitForReady = Boolean.FALSE;
        return callOptions;
    }

    public String getCompressor() {
        return this.compressorName;
    }

    public String getAuthority() {
        return this.authority;
    }

    public CallCredentials getCredentials() {
        return this.credentials;
    }

    public CallOptions withExecutor(Executor executor) {
        CallOptions callOptions = new CallOptions(this);
        callOptions.executor = executor;
        return callOptions;
    }

    public CallOptions withStreamTracerFactory(ClientStreamTracer.Factory factory) {
        CallOptions callOptions = new CallOptions(this);
        ArrayList arrayList = new ArrayList(this.streamTracerFactories.size() + 1);
        arrayList.addAll(this.streamTracerFactories);
        arrayList.add(factory);
        callOptions.streamTracerFactories = Collections.unmodifiableList(arrayList);
        return callOptions;
    }

    public List<ClientStreamTracer.Factory> getStreamTracerFactories() {
        return this.streamTracerFactories;
    }

    /* loaded from: classes.dex */
    public static final class Key<T> {
        private final String debugString;
        private final T defaultValue;

        private Key(String str, T t) {
            this.debugString = str;
            this.defaultValue = t;
        }

        public String toString() {
            return this.debugString;
        }

        public static <T> Key<T> create(String str) {
            Preconditions.checkNotNull(str, "debugString");
            return new Key<>(str, null);
        }
    }

    public <T> CallOptions withOption(Key<T> key, T t) {
        Preconditions.checkNotNull(key, "key");
        Preconditions.checkNotNull(t, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        CallOptions callOptions = new CallOptions(this);
        int i = 0;
        while (true) {
            Object[][] objArr = this.customOptions;
            if (i >= objArr.length) {
                i = -1;
                break;
            } else if (key.equals(objArr[i][0])) {
                break;
            } else {
                i++;
            }
        }
        Object[][] objArr2 = (Object[][]) Array.newInstance(Object.class, this.customOptions.length + (i == -1 ? 1 : 0), 2);
        callOptions.customOptions = objArr2;
        Object[][] objArr3 = this.customOptions;
        System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
        if (i == -1) {
            Object[][] objArr4 = callOptions.customOptions;
            int length = this.customOptions.length;
            Object[] objArr5 = new Object[2];
            objArr5[0] = key;
            objArr5[1] = t;
            objArr4[length] = objArr5;
        } else {
            Object[][] objArr6 = callOptions.customOptions;
            Object[] objArr7 = new Object[2];
            objArr7[0] = key;
            objArr7[1] = t;
            objArr6[i] = objArr7;
        }
        return callOptions;
    }

    public <T> T getOption(Key<T> key) {
        Preconditions.checkNotNull(key, "key");
        int i = 0;
        while (true) {
            Object[][] objArr = this.customOptions;
            if (i >= objArr.length) {
                return (T) ((Key) key).defaultValue;
            }
            if (key.equals(objArr[i][0])) {
                return (T) this.customOptions[i][1];
            }
            i++;
        }
    }

    public Executor getExecutor() {
        return this.executor;
    }

    private CallOptions() {
        this.customOptions = (Object[][]) Array.newInstance(Object.class, 0, 2);
        this.streamTracerFactories = Collections.emptyList();
    }

    public boolean isWaitForReady() {
        return Boolean.TRUE.equals(this.waitForReady);
    }

    public CallOptions withMaxInboundMessageSize(int i) {
        Preconditions.checkArgument(i >= 0, "invalid maxsize %s", i);
        CallOptions callOptions = new CallOptions(this);
        callOptions.maxInboundMessageSize = Integer.valueOf(i);
        return callOptions;
    }

    public CallOptions withMaxOutboundMessageSize(int i) {
        Preconditions.checkArgument(i >= 0, "invalid maxsize %s", i);
        CallOptions callOptions = new CallOptions(this);
        callOptions.maxOutboundMessageSize = Integer.valueOf(i);
        return callOptions;
    }

    public Integer getMaxInboundMessageSize() {
        return this.maxInboundMessageSize;
    }

    public Integer getMaxOutboundMessageSize() {
        return this.maxOutboundMessageSize;
    }

    private CallOptions(CallOptions callOptions) {
        this.customOptions = (Object[][]) Array.newInstance(Object.class, 0, 2);
        this.streamTracerFactories = Collections.emptyList();
        this.deadline = callOptions.deadline;
        this.authority = callOptions.authority;
        this.credentials = callOptions.credentials;
        this.executor = callOptions.executor;
        this.compressorName = callOptions.compressorName;
        this.customOptions = callOptions.customOptions;
        this.waitForReady = callOptions.waitForReady;
        this.maxInboundMessageSize = callOptions.maxInboundMessageSize;
        this.maxOutboundMessageSize = callOptions.maxOutboundMessageSize;
        this.streamTracerFactories = callOptions.streamTracerFactories;
    }

    public String toString() {
        MoreObjects.ToStringHelper add = MoreObjects.toStringHelper(this).add("deadline", this.deadline).add("authority", this.authority).add("callCredentials", this.credentials);
        Executor executor = this.executor;
        return add.add("executor", executor != null ? executor.getClass() : null).add("compressorName", this.compressorName).add("customOptions", Arrays.deepToString(this.customOptions)).add("waitForReady", isWaitForReady()).add("maxInboundMessageSize", this.maxInboundMessageSize).add("maxOutboundMessageSize", this.maxOutboundMessageSize).add("streamTracerFactories", this.streamTracerFactories).toString();
    }
}
