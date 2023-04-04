package com.iMe.bots.data.model.network;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Response.kt */
/* loaded from: classes3.dex */
public final class Response<T> {
    @SerializedName("message")
    private final String message;
    @SerializedName("payload")
    private final T payload;
    @SerializedName("status")
    private final String status;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Response copy$default(Response response, String str, String str2, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = response.status;
        }
        if ((i & 2) != 0) {
            str2 = response.message;
        }
        if ((i & 4) != 0) {
            obj = response.payload;
        }
        return response.copy(str, str2, obj);
    }

    public final String component1() {
        return this.status;
    }

    public final String component2() {
        return this.message;
    }

    public final T component3() {
        return this.payload;
    }

    public final Response<T> copy(String status, String message, T t) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        return new Response<>(status, message, t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Response) {
            Response response = (Response) obj;
            return Intrinsics.areEqual(this.status, response.status) && Intrinsics.areEqual(this.message, response.message) && Intrinsics.areEqual(this.payload, response.payload);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.status.hashCode() * 31) + this.message.hashCode()) * 31;
        T t = this.payload;
        return hashCode + (t == null ? 0 : t.hashCode());
    }

    public String toString() {
        return "Response(status=" + this.status + ", message=" + this.message + ", payload=" + this.payload + ')';
    }

    public Response(String status, String message, T t) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        this.status = status;
        this.message = message;
        this.payload = t;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getMessage() {
        return this.message;
    }

    public final T getPayload() {
        return this.payload;
    }
}
