package com.iMe.bots.data.model.network;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ValidationInfo.kt */
/* loaded from: classes4.dex */
public final class ValidationInfo {
    private final String error;
    private final boolean success;

    public static /* synthetic */ ValidationInfo copy$default(ValidationInfo validationInfo, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = validationInfo.success;
        }
        if ((i & 2) != 0) {
            str = validationInfo.error;
        }
        return validationInfo.copy(z, str);
    }

    public final boolean component1() {
        return this.success;
    }

    public final String component2() {
        return this.error;
    }

    public final ValidationInfo copy(boolean z, String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return new ValidationInfo(z, error);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ValidationInfo) {
            ValidationInfo validationInfo = (ValidationInfo) obj;
            return this.success == validationInfo.success && Intrinsics.areEqual(this.error, validationInfo.error);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.success;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.error.hashCode();
    }

    public String toString() {
        return "ValidationInfo(success=" + this.success + ", error=" + this.error + ')';
    }

    public ValidationInfo(boolean z, String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.success = z;
        this.error = error;
    }

    public final String getError() {
        return this.error;
    }

    public final boolean getSuccess() {
        return this.success;
    }
}
