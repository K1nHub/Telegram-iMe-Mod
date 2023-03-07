package com.smedialink.utils.helper.telegram;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TelegramTestPhoneNumber.kt */
/* loaded from: classes3.dex */
public final class TelegramTestPhoneNumber {
    private final String confirmXCode;
    private final String number;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TelegramTestPhoneNumber) {
            TelegramTestPhoneNumber telegramTestPhoneNumber = (TelegramTestPhoneNumber) obj;
            return Intrinsics.areEqual(this.confirmXCode, telegramTestPhoneNumber.confirmXCode) && Intrinsics.areEqual(this.number, telegramTestPhoneNumber.number);
        }
        return false;
    }

    public int hashCode() {
        return (this.confirmXCode.hashCode() * 31) + this.number.hashCode();
    }

    public String toString() {
        return "TelegramTestPhoneNumber(confirmXCode=" + this.confirmXCode + ", number=" + this.number + ')';
    }

    public TelegramTestPhoneNumber(String confirmXCode, String number) {
        Intrinsics.checkNotNullParameter(confirmXCode, "confirmXCode");
        Intrinsics.checkNotNullParameter(number, "number");
        this.confirmXCode = confirmXCode;
        this.number = number;
    }

    public final String getConfirmXCode() {
        return this.confirmXCode;
    }

    public final String getNumber() {
        return this.number;
    }
}
