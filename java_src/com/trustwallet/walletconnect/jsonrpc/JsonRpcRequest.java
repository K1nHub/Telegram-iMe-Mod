package com.trustwallet.walletconnect.jsonrpc;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.trustwallet.walletconnect.models.WCMethod;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: JsonRpcRequest.kt */
/* loaded from: classes4.dex */
public final class JsonRpcRequest<T> {

    /* renamed from: id */
    private final long f413id;
    private final String jsonrpc;
    private final WCMethod method;
    private final T params;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JsonRpcRequest) {
            JsonRpcRequest jsonRpcRequest = (JsonRpcRequest) obj;
            return this.f413id == jsonRpcRequest.f413id && Intrinsics.areEqual(this.jsonrpc, jsonRpcRequest.jsonrpc) && this.method == jsonRpcRequest.method && Intrinsics.areEqual(this.params, jsonRpcRequest.params);
        }
        return false;
    }

    public int hashCode() {
        int m1018m = ((ProfileData$$ExternalSyntheticBackport0.m1018m(this.f413id) * 31) + this.jsonrpc.hashCode()) * 31;
        WCMethod wCMethod = this.method;
        int hashCode = (m1018m + (wCMethod == null ? 0 : wCMethod.hashCode())) * 31;
        T t = this.params;
        return hashCode + (t != null ? t.hashCode() : 0);
    }

    public String toString() {
        return "JsonRpcRequest(id=" + this.f413id + ", jsonrpc=" + this.jsonrpc + ", method=" + this.method + ", params=" + this.params + ')';
    }

    public JsonRpcRequest(long j, String jsonrpc, WCMethod wCMethod, T t) {
        Intrinsics.checkNotNullParameter(jsonrpc, "jsonrpc");
        this.f413id = j;
        this.jsonrpc = jsonrpc;
        this.method = wCMethod;
        this.params = t;
    }

    public /* synthetic */ JsonRpcRequest(long j, String str, WCMethod wCMethod, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i & 2) != 0 ? "2.0" : str, wCMethod, obj);
    }

    public final long getId() {
        return this.f413id;
    }

    public final WCMethod getMethod() {
        return this.method;
    }

    public final T getParams() {
        return this.params;
    }
}
