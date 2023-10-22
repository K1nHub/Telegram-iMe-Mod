package com.iMe.storage.data.network.model.response.crypto.fragment;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentUsernamesResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentUsernamesResponse {
    private final List<TonFragmentProductResponse> usernames;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TonFragmentUsernamesResponse copy$default(TonFragmentUsernamesResponse tonFragmentUsernamesResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tonFragmentUsernamesResponse.usernames;
        }
        return tonFragmentUsernamesResponse.copy(list);
    }

    public final List<TonFragmentProductResponse> component1() {
        return this.usernames;
    }

    public final TonFragmentUsernamesResponse copy(List<TonFragmentProductResponse> usernames) {
        Intrinsics.checkNotNullParameter(usernames, "usernames");
        return new TonFragmentUsernamesResponse(usernames);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TonFragmentUsernamesResponse) && Intrinsics.areEqual(this.usernames, ((TonFragmentUsernamesResponse) obj).usernames);
    }

    public int hashCode() {
        return this.usernames.hashCode();
    }

    public String toString() {
        return "TonFragmentUsernamesResponse(usernames=" + this.usernames + ')';
    }

    public TonFragmentUsernamesResponse(List<TonFragmentProductResponse> usernames) {
        Intrinsics.checkNotNullParameter(usernames, "usernames");
        this.usernames = usernames;
    }

    public final List<TonFragmentProductResponse> getUsernames() {
        return this.usernames;
    }
}
