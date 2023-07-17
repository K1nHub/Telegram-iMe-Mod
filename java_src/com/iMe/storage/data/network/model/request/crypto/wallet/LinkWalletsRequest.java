package com.iMe.storage.data.network.model.request.crypto.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LinkWalletsRequest.kt */
/* loaded from: classes3.dex */
public final class LinkWalletsRequest {
    private final List<LinkingWalletRequest> wallets;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LinkWalletsRequest copy$default(LinkWalletsRequest linkWalletsRequest, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = linkWalletsRequest.wallets;
        }
        return linkWalletsRequest.copy(list);
    }

    public final List<LinkingWalletRequest> component1() {
        return this.wallets;
    }

    public final LinkWalletsRequest copy(List<LinkingWalletRequest> wallets) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        return new LinkWalletsRequest(wallets);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LinkWalletsRequest) && Intrinsics.areEqual(this.wallets, ((LinkWalletsRequest) obj).wallets);
    }

    public int hashCode() {
        return this.wallets.hashCode();
    }

    public String toString() {
        return "LinkWalletsRequest(wallets=" + this.wallets + ')';
    }

    public LinkWalletsRequest(List<LinkingWalletRequest> wallets) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        this.wallets = wallets;
    }

    public final List<LinkingWalletRequest> getWallets() {
        return this.wallets;
    }
}
