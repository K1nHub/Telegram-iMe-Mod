package com.trustwallet.walletconnect.jsonrpc;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: JsonRpcResponse.kt */
/* loaded from: classes4.dex */
public final class JsonRpcErrorResponse {
    private final JsonRpcError error;

    /* renamed from: id */
    private final long f482id;
    private final String jsonrpc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JsonRpcErrorResponse) {
            JsonRpcErrorResponse jsonRpcErrorResponse = (JsonRpcErrorResponse) obj;
            return Intrinsics.areEqual(this.jsonrpc, jsonRpcErrorResponse.jsonrpc) && this.f482id == jsonRpcErrorResponse.f482id && Intrinsics.areEqual(this.error, jsonRpcErrorResponse.error);
        }
        return false;
    }

    public int hashCode() {
        return (((this.jsonrpc.hashCode() * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f482id)) * 31) + this.error.hashCode();
    }

    public String toString() {
        return "JsonRpcErrorResponse(jsonrpc=" + this.jsonrpc + ", id=" + this.f482id + ", error=" + this.error + ')';
    }

    public JsonRpcErrorResponse(String jsonrpc, long j, JsonRpcError error) {
        Intrinsics.checkNotNullParameter(jsonrpc, "jsonrpc");
        Intrinsics.checkNotNullParameter(error, "error");
        this.jsonrpc = jsonrpc;
        this.f482id = j;
        this.error = error;
    }

    public /* synthetic */ JsonRpcErrorResponse(String str, long j, JsonRpcError jsonRpcError, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "2.0" : str, j, jsonRpcError);
    }
}
