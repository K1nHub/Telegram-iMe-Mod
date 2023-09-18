package com.trustwallet.walletconnect.jsonrpc;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: JsonRpcError.kt */
/* loaded from: classes6.dex */
public final class JsonRpcError {
    public static final Companion Companion = new Companion(null);
    private final int code;
    private final String message;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JsonRpcError) {
            JsonRpcError jsonRpcError = (JsonRpcError) obj;
            return this.code == jsonRpcError.code && Intrinsics.areEqual(this.message, jsonRpcError.message);
        }
        return false;
    }

    public int hashCode() {
        return (this.code * 31) + this.message.hashCode();
    }

    public String toString() {
        return "JsonRpcError(code=" + this.code + ", message=" + this.message + ')';
    }

    public JsonRpcError(int i, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = i;
        this.message = message;
    }

    /* compiled from: JsonRpcError.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final JsonRpcError serverError(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new JsonRpcError(-32000, message);
        }

        public final JsonRpcError invalidParams(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new JsonRpcError(-32602, message);
        }
    }
}
