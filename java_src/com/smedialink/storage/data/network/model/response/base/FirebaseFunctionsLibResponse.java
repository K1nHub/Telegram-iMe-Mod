package com.smedialink.storage.data.network.model.response.base;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FirebaseFunctionsLibResponse.kt */
/* loaded from: classes3.dex */
public final class FirebaseFunctionsLibResponse<T> {
    @SerializedName("result")
    private final ApiBaseResponse<T> result;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FirebaseFunctionsLibResponse copy$default(FirebaseFunctionsLibResponse firebaseFunctionsLibResponse, ApiBaseResponse apiBaseResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            apiBaseResponse = firebaseFunctionsLibResponse.result;
        }
        return firebaseFunctionsLibResponse.copy(apiBaseResponse);
    }

    public final ApiBaseResponse<T> component1() {
        return this.result;
    }

    public final FirebaseFunctionsLibResponse<T> copy(ApiBaseResponse<T> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        return new FirebaseFunctionsLibResponse<>(result);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FirebaseFunctionsLibResponse) && Intrinsics.areEqual(this.result, ((FirebaseFunctionsLibResponse) obj).result);
    }

    public int hashCode() {
        return this.result.hashCode();
    }

    public String toString() {
        return "FirebaseFunctionsLibResponse(result=" + this.result + ')';
    }

    public FirebaseFunctionsLibResponse(ApiBaseResponse<T> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.result = result;
    }

    public final ApiBaseResponse<T> getResult() {
        return this.result;
    }
}
