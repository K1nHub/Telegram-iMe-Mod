package com.iMe.storage.data.network.model.response.crypto.pin;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: PasswordByPinCodeRequest.kt */
/* loaded from: classes3.dex */
public final class PasswordByPinCodeRequest {
    private final String password;

    public static /* synthetic */ PasswordByPinCodeRequest copy$default(PasswordByPinCodeRequest passwordByPinCodeRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = passwordByPinCodeRequest.password;
        }
        return passwordByPinCodeRequest.copy(str);
    }

    public final String component1() {
        return this.password;
    }

    public final PasswordByPinCodeRequest copy(String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        return new PasswordByPinCodeRequest(password);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PasswordByPinCodeRequest) && Intrinsics.areEqual(this.password, ((PasswordByPinCodeRequest) obj).password);
    }

    public int hashCode() {
        return this.password.hashCode();
    }

    public String toString() {
        return "PasswordByPinCodeRequest(password=" + this.password + ')';
    }

    public PasswordByPinCodeRequest(String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        this.password = password;
    }

    public final String getPassword() {
        return this.password;
    }
}
