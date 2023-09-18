package com.iMe.storage.data.network.model.response.base;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ApiBaseResponse.kt */
/* loaded from: classes4.dex */
public final class ApiBaseResponse<T> {
    private final String code;
    private final String message;
    private final T payload;
    private final Status status;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ApiBaseResponse copy$default(ApiBaseResponse apiBaseResponse, String str, Status status, String str2, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = apiBaseResponse.code;
        }
        if ((i & 2) != 0) {
            status = apiBaseResponse.status;
        }
        if ((i & 4) != 0) {
            str2 = apiBaseResponse.message;
        }
        if ((i & 8) != 0) {
            obj = apiBaseResponse.payload;
        }
        return apiBaseResponse.copy(str, status, str2, obj);
    }

    public final String component1() {
        return this.code;
    }

    public final Status component2() {
        return this.status;
    }

    public final String component3() {
        return this.message;
    }

    public final T component4() {
        return this.payload;
    }

    public final ApiBaseResponse<T> copy(String code, Status status, String message, T t) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        return new ApiBaseResponse<>(code, status, message, t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ApiBaseResponse) {
            ApiBaseResponse apiBaseResponse = (ApiBaseResponse) obj;
            return Intrinsics.areEqual(this.code, apiBaseResponse.code) && this.status == apiBaseResponse.status && Intrinsics.areEqual(this.message, apiBaseResponse.message) && Intrinsics.areEqual(this.payload, apiBaseResponse.payload);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((this.code.hashCode() * 31) + this.status.hashCode()) * 31) + this.message.hashCode()) * 31;
        T t = this.payload;
        return hashCode + (t == null ? 0 : t.hashCode());
    }

    public String toString() {
        return "ApiBaseResponse(code=" + this.code + ", status=" + this.status + ", message=" + this.message + ", payload=" + this.payload + ')';
    }

    public ApiBaseResponse(String code, Status status, String message, T t) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = code;
        this.status = status;
        this.message = message;
        this.payload = t;
    }

    public final String getCode() {
        return this.code;
    }

    public final Status getStatus() {
        return this.status;
    }

    public final String getMessage() {
        return this.message;
    }

    public final T getPayload() {
        return this.payload;
    }

    public final boolean isSuccess() {
        return this.status == Status.OK;
    }

    public final boolean isError() {
        return this.status == Status.ERROR;
    }
}
