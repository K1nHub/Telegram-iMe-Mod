package com.trustwallet.walletconnect.models.session;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCSessionUpdate.kt */
/* loaded from: classes3.dex */
public final class WCSessionUpdate {
    private final List<String> accounts;
    private final boolean approved;
    private final Integer chainId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCSessionUpdate) {
            WCSessionUpdate wCSessionUpdate = (WCSessionUpdate) obj;
            return this.approved == wCSessionUpdate.approved && Intrinsics.areEqual(this.chainId, wCSessionUpdate.chainId) && Intrinsics.areEqual(this.accounts, wCSessionUpdate.accounts);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z = this.approved;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        Integer num = this.chainId;
        int hashCode = (i + (num == null ? 0 : num.hashCode())) * 31;
        List<String> list = this.accounts;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "WCSessionUpdate(approved=" + this.approved + ", chainId=" + this.chainId + ", accounts=" + this.accounts + ')';
    }

    public WCSessionUpdate(boolean z, Integer num, List<String> list) {
        this.approved = z;
        this.chainId = num;
        this.accounts = list;
    }

    public final boolean getApproved() {
        return this.approved;
    }
}
