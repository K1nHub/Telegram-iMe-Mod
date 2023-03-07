package com.smedialink.storage.data.network.model.request.crypto.pin;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReadPasswordByPinCodeRequest.kt */
/* loaded from: classes3.dex */
public final class ReadPasswordByPinCodeRequest {
    private final String pinCode;
    private final String pinCodeId;

    public static /* synthetic */ ReadPasswordByPinCodeRequest copy$default(ReadPasswordByPinCodeRequest readPasswordByPinCodeRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = readPasswordByPinCodeRequest.pinCode;
        }
        if ((i & 2) != 0) {
            str2 = readPasswordByPinCodeRequest.pinCodeId;
        }
        return readPasswordByPinCodeRequest.copy(str, str2);
    }

    public final String component1() {
        return this.pinCode;
    }

    public final String component2() {
        return this.pinCodeId;
    }

    public final ReadPasswordByPinCodeRequest copy(String pinCode, String pinCodeId) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(pinCodeId, "pinCodeId");
        return new ReadPasswordByPinCodeRequest(pinCode, pinCodeId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ReadPasswordByPinCodeRequest) {
            ReadPasswordByPinCodeRequest readPasswordByPinCodeRequest = (ReadPasswordByPinCodeRequest) obj;
            return Intrinsics.areEqual(this.pinCode, readPasswordByPinCodeRequest.pinCode) && Intrinsics.areEqual(this.pinCodeId, readPasswordByPinCodeRequest.pinCodeId);
        }
        return false;
    }

    public int hashCode() {
        return (this.pinCode.hashCode() * 31) + this.pinCodeId.hashCode();
    }

    public String toString() {
        return "ReadPasswordByPinCodeRequest(pinCode=" + this.pinCode + ", pinCodeId=" + this.pinCodeId + ')';
    }

    public ReadPasswordByPinCodeRequest(String pinCode, String pinCodeId) {
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
