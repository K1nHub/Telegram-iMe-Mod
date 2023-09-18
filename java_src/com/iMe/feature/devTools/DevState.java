package com.iMe.feature.devTools;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DevState.kt */
/* loaded from: classes4.dex */
public final class DevState {
    private final boolean isLoading;
    private final String text;

    public DevState() {
        this(null, false, 3, null);
    }

    public static /* synthetic */ DevState copy$default(DevState devState, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = devState.text;
        }
        if ((i & 2) != 0) {
            z = devState.isLoading;
        }
        return devState.copy(str, z);
    }

    public final DevState copy(String text, boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new DevState(text, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DevState) {
            DevState devState = (DevState) obj;
            return Intrinsics.areEqual(this.text, devState.text) && this.isLoading == devState.isLoading;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.text.hashCode() * 31;
        boolean z = this.isLoading;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "DevState(text=" + this.text + ", isLoading=" + this.isLoading + ')';
    }

    public DevState(String text, boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
        this.isLoading = z;
    }

    public /* synthetic */ DevState(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "Hello" : str, (i & 2) != 0 ? false : z);
    }

    public final String getText() {
        return this.text;
    }

    public final boolean isLoading() {
        return this.isLoading;
    }
}
