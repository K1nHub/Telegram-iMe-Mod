package com.iMe.storage.data.network.model.response.crypto.pin;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: PasswordByPinCodeResponse.kt */
/* loaded from: classes3.dex */
public final class PasswordByPinCodeResponse {
    private final String password;

    public static /* synthetic */ PasswordByPinCodeResponse copy$default(PasswordByPinCodeResponse passwordByPinCodeResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = passwordByPinCodeResponse.password;
        }
        return passwordByPinCodeResponse.copy(str);
    }

    public final String component1() {
        return this.password;
    }

    public final PasswordByPinCodeResponse copy(String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        return new PasswordByPinCodeResponse(password);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PasswordByPinCodeResponse) && Intrinsics.areEqual(this.password, ((PasswordByPinCodeResponse) obj).password);
    }

    public int hashCode() {
        return this.password.hashCode();
    }

    public String toString() {
        return "PasswordByPinCodeResponse(password=" + this.password + ')';
    }

    public PasswordByPinCodeResponse(String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        this.password = password;
    }

    public final String getPassword() {
        return this.password;
    }
}
