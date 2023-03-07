package com.smedialink.model.wallet.home;

import com.smedialink.model.common.NoChildNode;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: CryptoAccountItem.kt */
/* loaded from: classes3.dex */
public final class CryptoAccountItem extends NoChildNode {
    private final List<HorizontalActionButtonItem> actions;
    private final String address;
    private final NetworkType networkType;
    private final TLRPC$User user;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CryptoAccountItem copy$default(CryptoAccountItem cryptoAccountItem, TLRPC$User tLRPC$User, String str, NetworkType networkType, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            tLRPC$User = cryptoAccountItem.user;
        }
        if ((i & 2) != 0) {
            str = cryptoAccountItem.address;
        }
        if ((i & 4) != 0) {
            networkType = cryptoAccountItem.networkType;
        }
        if ((i & 8) != 0) {
            list = cryptoAccountItem.actions;
        }
        return cryptoAccountItem.copy(tLRPC$User, str, networkType, list);
    }

    public final TLRPC$User component1() {
        return this.user;
    }

    public final String component2() {
        return this.address;
    }

    public final NetworkType component3() {
        return this.networkType;
    }

    public final List<HorizontalActionButtonItem> component4() {
        return this.actions;
    }

    public final CryptoAccountItem copy(TLRPC$User user, String address, NetworkType networkType, List<HorizontalActionButtonItem> actions) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(actions, "actions");
        return new CryptoAccountItem(user, address, networkType, actions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoAccountItem) {
            CryptoAccountItem cryptoAccountItem = (CryptoAccountItem) obj;
            return Intrinsics.areEqual(this.user, cryptoAccountItem.user) && Intrinsics.areEqual(this.address, cryptoAccountItem.address) && this.networkType == cryptoAccountItem.networkType && Intrinsics.areEqual(this.actions, cryptoAccountItem.actions);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.user.hashCode() * 31) + this.address.hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.actions.hashCode();
    }

    public String toString() {
        return "CryptoAccountItem(user=" + this.user + ", address=" + this.address + ", networkType=" + this.networkType + ", actions=" + this.actions + ')';
    }

    public final TLRPC$User getUser() {
        return this.user;
    }

    public final String getAddress() {
        return this.address;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    public final List<HorizontalActionButtonItem> getActions() {
        return this.actions;
    }

    public CryptoAccountItem(TLRPC$User user, String address, NetworkType networkType, List<HorizontalActionButtonItem> actions) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.user = user;
        this.address = address;
        this.networkType = networkType;
        this.actions = actions;
    }
}
