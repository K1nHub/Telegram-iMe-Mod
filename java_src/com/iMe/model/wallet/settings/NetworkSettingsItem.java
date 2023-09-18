package com.iMe.model.wallet.settings;

import com.iMe.model.common.NoChildNode;
import com.iMe.model.wallet.crypto.NetworkItem;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworkSettingsItem.kt */
/* loaded from: classes4.dex */
public final class NetworkSettingsItem extends NoChildNode {
    private final boolean isEnabled;
    private final NetworkItem.Crypto networkItem;

    public static /* synthetic */ NetworkSettingsItem copy$default(NetworkSettingsItem networkSettingsItem, NetworkItem.Crypto crypto, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            crypto = networkSettingsItem.networkItem;
        }
        if ((i & 2) != 0) {
            z = networkSettingsItem.isEnabled;
        }
        return networkSettingsItem.copy(crypto, z);
    }

    public final NetworkItem.Crypto component1() {
        return this.networkItem;
    }

    public final boolean component2() {
        return this.isEnabled;
    }

    public final NetworkSettingsItem copy(NetworkItem.Crypto networkItem, boolean z) {
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        return new NetworkSettingsItem(networkItem, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NetworkSettingsItem) {
            NetworkSettingsItem networkSettingsItem = (NetworkSettingsItem) obj;
            return Intrinsics.areEqual(this.networkItem, networkSettingsItem.networkItem) && this.isEnabled == networkSettingsItem.isEnabled;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.networkItem.hashCode() * 31;
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "NetworkSettingsItem(networkItem=" + this.networkItem + ", isEnabled=" + this.isEnabled + ')';
    }

    public final NetworkItem.Crypto getNetworkItem() {
        return this.networkItem;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public NetworkSettingsItem(NetworkItem.Crypto networkItem, boolean z) {
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        this.networkItem = networkItem;
        this.isEnabled = z;
    }
}
