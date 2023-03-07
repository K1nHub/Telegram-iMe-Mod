package com.smedialink.model.wallet.crypto.pin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EnterPinCodeResult.kt */
/* loaded from: classes3.dex */
public abstract class EnterPinCodeResult {
    public /* synthetic */ EnterPinCodeResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: EnterPinCodeResult.kt */
    /* loaded from: classes3.dex */
    public static final class Success extends EnterPinCodeResult {
        private final String password;
        private final String pin;

        public Success() {
            this(null, null, 3, null);
        }

        public static /* synthetic */ Success copy$default(Success success, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = success.pin;
            }
            if ((i & 2) != 0) {
                str2 = success.password;
            }
            return success.copy(str, str2);
        }

        public final String component1() {
            return this.pin;
        }

        public final String component2() {
            return this.password;
        }

        public final Success copy(String pin, String password) {
            Intrinsics.checkNotNullParameter(pin, "pin");
            Intrinsics.checkNotNullParameter(password, "password");
            return new Success(pin, password);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Success) {
                Success success = (Success) obj;
                return Intrinsics.areEqual(this.pin, success.pin) && Intrinsics.areEqual(this.password, success.password);
            }
            return false;
        }

        public int hashCode() {
            return (this.pin.hashCode() * 31) + this.password.hashCode();
        }

        public String toString() {
            return "Success(pin=" + this.pin + ", password=" + this.password + ')';
        }

        public /* synthetic */ Success(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
        }

        public final String getPin() {
            return this.pin;
        }

        public final String getPassword() {
            return this.password;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(String pin, String password) {
            super(null);
            Intrinsics.checkNotNullParameter(pin, "pin");
            Intrinsics.checkNotNullParameter(password, "password");
            this.pin = pin;
            this.password = password;
        }
    }

    private EnterPinCodeResult() {
    }

    /* compiled from: EnterPinCodeResult.kt */
    /* loaded from: classes3.dex */
    public static final class Cancelled extends EnterPinCodeResult {
        public static final Cancelled INSTANCE = new Cancelled();

        private Cancelled() {
            super(null);
        }
    }
}
