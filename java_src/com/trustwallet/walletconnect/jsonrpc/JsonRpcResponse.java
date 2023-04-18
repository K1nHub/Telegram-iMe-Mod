package com.trustwallet.walletconnect.jsonrpc;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: JsonRpcResponse.kt */
/* loaded from: classes4.dex */
public final class JsonRpcResponse<T> {

    /* renamed from: id */
    private final long f386id;
    private final String jsonrpc;
    private final T result;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JsonRpcResponse) {
            JsonRpcResponse jsonRpcResponse = (JsonRpcResponse) obj;
            return Intrinsics.areEqual(this.jsonrpc, jsonRpcResponse.jsonrpc) && this.f386id == jsonRpcResponse.f386id && Intrinsics.areEqual(this.result, jsonRpcResponse.result);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.jsonrpc.hashCode() * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.f386id)) * 31;
        T t = this.result;
        return hashCode + (t == null ? 0 : t.hashCode());
    }

    public String toString() {
        return "JsonRpcResponse(jsonrpc=" + this.jsonrpc + ", id=" + this.f386id + ", result=" + this.result + ')';
    }

    public JsonRpcResponse(String jsonrpc, long j, T t) {
        Intrinsics.checkNotNullParameter(jsonrpc, "jsonrpc");
        this.jsonrpc = jsonrpc;
        this.f386id = j;
        this.result = t;
    }

    public /* synthetic */ JsonRpcResponse(String str, long j, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "2.0" : str, j, obj);
    }
}
