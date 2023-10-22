package com.iMe.storage.data.network.model.response.crypto.fragment;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentRecipientDataResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentRecipientDataResponse {
    private final String name;
    private final String recipient;

    public static /* synthetic */ TonFragmentRecipientDataResponse copy$default(TonFragmentRecipientDataResponse tonFragmentRecipientDataResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tonFragmentRecipientDataResponse.name;
        }
        if ((i & 2) != 0) {
            str2 = tonFragmentRecipientDataResponse.recipient;
        }
        return tonFragmentRecipientDataResponse.copy(str, str2);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.recipient;
    }

    public final TonFragmentRecipientDataResponse copy(String name, String recipient) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        return new TonFragmentRecipientDataResponse(name, recipient);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentRecipientDataResponse) {
            TonFragmentRecipientDataResponse tonFragmentRecipientDataResponse = (TonFragmentRecipientDataResponse) obj;
            return Intrinsics.areEqual(this.name, tonFragmentRecipientDataResponse.name) && Intrinsics.areEqual(this.recipient, tonFragmentRecipientDataResponse.recipient);
        }
        return false;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.recipient.hashCode();
    }

    public String toString() {
        return "TonFragmentRecipientDataResponse(name=" + this.name + ", recipient=" + this.recipient + ')';
    }

    public TonFragmentRecipientDataResponse(String name, String recipient) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        this.name = name;
        this.recipient = recipient;
    }

    public final String getName() {
        return this.name;
    }

    public final String getRecipient() {
        return this.recipient;
    }
}
