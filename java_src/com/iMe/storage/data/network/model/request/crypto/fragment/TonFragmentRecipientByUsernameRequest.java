package com.iMe.storage.data.network.model.request.crypto.fragment;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentRecipientByUsernameRequest.kt */
/* loaded from: classes3.dex */
public final class TonFragmentRecipientByUsernameRequest {
    private final int months;
    private final String username;

    public static /* synthetic */ TonFragmentRecipientByUsernameRequest copy$default(TonFragmentRecipientByUsernameRequest tonFragmentRecipientByUsernameRequest, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = tonFragmentRecipientByUsernameRequest.username;
        }
        if ((i2 & 2) != 0) {
            i = tonFragmentRecipientByUsernameRequest.months;
        }
        return tonFragmentRecipientByUsernameRequest.copy(str, i);
    }

    public final String component1() {
        return this.username;
    }

    public final int component2() {
        return this.months;
    }

    public final TonFragmentRecipientByUsernameRequest copy(String username, int i) {
        Intrinsics.checkNotNullParameter(username, "username");
        return new TonFragmentRecipientByUsernameRequest(username, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentRecipientByUsernameRequest) {
            TonFragmentRecipientByUsernameRequest tonFragmentRecipientByUsernameRequest = (TonFragmentRecipientByUsernameRequest) obj;
            return Intrinsics.areEqual(this.username, tonFragmentRecipientByUsernameRequest.username) && this.months == tonFragmentRecipientByUsernameRequest.months;
        }
        return false;
    }

    public int hashCode() {
        return (this.username.hashCode() * 31) + this.months;
    }

    public String toString() {
        return "TonFragmentRecipientByUsernameRequest(username=" + this.username + ", months=" + this.months + ')';
    }

    public TonFragmentRecipientByUsernameRequest(String username, int i) {
        Intrinsics.checkNotNullParameter(username, "username");
        this.username = username;
        this.months = i;
    }

    public final String getUsername() {
        return this.username;
    }

    public final int getMonths() {
        return this.months;
    }
}
