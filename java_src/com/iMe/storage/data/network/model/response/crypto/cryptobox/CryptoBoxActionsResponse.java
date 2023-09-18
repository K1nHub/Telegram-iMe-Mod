package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxActionsResponse.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxActionsResponse {
    private final List<CryptoBoxActionResponse> actions;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CryptoBoxActionsResponse copy$default(CryptoBoxActionsResponse cryptoBoxActionsResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cryptoBoxActionsResponse.actions;
        }
        return cryptoBoxActionsResponse.copy(list);
    }

    public final List<CryptoBoxActionResponse> component1() {
        return this.actions;
    }

    public final CryptoBoxActionsResponse copy(List<CryptoBoxActionResponse> actions) {
        Intrinsics.checkNotNullParameter(actions, "actions");
        return new CryptoBoxActionsResponse(actions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CryptoBoxActionsResponse) && Intrinsics.areEqual(this.actions, ((CryptoBoxActionsResponse) obj).actions);
    }

    public int hashCode() {
        return this.actions.hashCode();
    }

    public String toString() {
        return "CryptoBoxActionsResponse(actions=" + this.actions + ')';
    }

    public CryptoBoxActionsResponse(List<CryptoBoxActionResponse> actions) {
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.actions = actions;
    }

    public final List<CryptoBoxActionResponse> getActions() {
        return this.actions;
    }
}
