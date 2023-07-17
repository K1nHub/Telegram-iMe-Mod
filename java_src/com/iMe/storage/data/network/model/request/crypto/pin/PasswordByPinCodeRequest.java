package com.iMe.storage.data.network.model.request.crypto.pin;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: PasswordByPinCodeRequest.kt */
/* loaded from: classes3.dex */
public final class PasswordByPinCodeRequest {
    private final String pinCode;
    private final String pinCodeId;

    public static /* synthetic */ PasswordByPinCodeRequest copy$default(PasswordByPinCodeRequest passwordByPinCodeRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = passwordByPinCodeRequest.pinCode;
        }
        if ((i & 2) != 0) {
            str2 = passwordByPinCodeRequest.pinCodeId;
        }
        return passwordByPinCodeRequest.copy(str, str2);
    }

    public final String component1() {
        return this.pinCode;
    }

    public final String component2() {
        return this.pinCodeId;
    }

    public final PasswordByPinCodeRequest copy(String pinCode, String pinCodeId) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(pinCodeId, "pinCodeId");
        return new PasswordByPinCodeRequest(pinCode, pinCodeId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PasswordByPinCodeRequest) {
            PasswordByPinCodeRequest passwordByPinCodeRequest = (PasswordByPinCodeRequest) obj;
            return Intrinsics.areEqual(this.pinCode, passwordByPinCodeRequest.pinCode) && Intrinsics.areEqual(this.pinCodeId, passwordByPinCodeRequest.pinCodeId);
        }
        return false;
    }

    public int hashCode() {
        return (this.pinCode.hashCode() * 31) + this.pinCodeId.hashCode();
    }

    public String toString() {
        return "PasswordByPinCodeRequest(pinCode=" + this.pinCode + ", pinCodeId=" + this.pinCodeId + ')';
    }

    public PasswordByPinCodeRequest(String pinCode, String pinCodeId) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(pinCodeId, "pinCodeId");
        this.pinCode = pinCode;
        this.pinCodeId = pinCodeId;
    }

    public final String getPinCode() {
        return this.pinCode;
    }

    public final String getPinCodeId() {
        return this.pinCodeId;
    }
}
