package com.smedialink.storage.data.network.model.request.crypto.pin;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CreatePinCodeRequest.kt */
/* loaded from: classes3.dex */
public final class CreatePinCodeRequest {
    private final String password;
    private final String pinCode;
    private final String pinCodeId;

    public static /* synthetic */ CreatePinCodeRequest copy$default(CreatePinCodeRequest createPinCodeRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = createPinCodeRequest.pinCode;
        }
        if ((i & 2) != 0) {
            str2 = createPinCodeRequest.password;
        }
        if ((i & 4) != 0) {
            str3 = createPinCodeRequest.pinCodeId;
        }
        return createPinCodeRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.pinCode;
    }

    public final String component2() {
        return this.password;
    }

    public final String component3() {
        return this.pinCodeId;
    }

    public final CreatePinCodeRequest copy(String pinCode, String password, String pinCodeId) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(pinCodeId, "pinCodeId");
        return new CreatePinCodeRequest(pinCode, password, pinCodeId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CreatePinCodeRequest) {
            CreatePinCodeRequest createPinCodeRequest = (CreatePinCodeRequest) obj;
            return Intrinsics.areEqual(this.pinCode, createPinCodeRequest.pinCode) && Intrinsics.areEqual(this.password, createPinCodeRequest.password) && Intrinsics.areEqual(this.pinCodeId, createPinCodeRequest.pinCodeId);
        }
        return false;
    }

    public int hashCode() {
        return (((this.pinCode.hashCode() * 31) + this.password.hashCode()) * 31) + this.pinCodeId.hashCode();
    }

    public String toString() {
        return "CreatePinCodeRequest(pinCode=" + this.pinCode + ", password=" + this.password + ", pinCodeId=" + this.pinCodeId + ')';
    }

    public CreatePinCodeRequest(String pinCode, String password, String pinCodeId) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(pinCodeId, "pinCodeId");
        this.pinCode = pinCode;
        this.password = password;
        this.pinCodeId = pinCodeId;
    }

    public final String getPinCode() {
        return this.pinCode;
    }

    public final String getPassword() {
        return this.password;
    }

    public final String getPinCodeId() {
        return this.pinCodeId;
    }
}
