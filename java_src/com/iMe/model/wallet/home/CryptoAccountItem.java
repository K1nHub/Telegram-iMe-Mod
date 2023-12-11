package com.iMe.model.wallet.home;

import com.iMe.model.common.NoChildNode;
import com.iMe.model.wallet.crypto.NetworkItem;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: CryptoAccountItem.kt */
/* loaded from: classes3.dex */
public final class CryptoAccountItem extends NoChildNode {
    private final List<HorizontalActionButtonItem> actions;
    private final String address;
    private final NetworkItem networkItem;
    private final TLRPC$User user;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CryptoAccountItem copy$default(CryptoAccountItem cryptoAccountItem, TLRPC$User tLRPC$User, String str, NetworkItem networkItem, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            tLRPC$User = cryptoAccountItem.user;
        }
        if ((i & 2) != 0) {
            str = cryptoAccountItem.address;
        }
        if ((i & 4) != 0) {
            networkItem = cryptoAccountItem.networkItem;
        }
        if ((i & 8) != 0) {
            list = cryptoAccountItem.actions;
        }
        return cryptoAccountItem.copy(tLRPC$User, str, networkItem, list);
    }

    public final TLRPC$User component1() {
        return this.user;
    }

    public final String component2() {
        return this.address;
    }

    public final NetworkItem component3() {
        return this.networkItem;
    }

    public final List<HorizontalActionButtonItem> component4() {
        return this.actions;
    }

    public final CryptoAccountItem copy(TLRPC$User user, String address, NetworkItem networkItem, List<HorizontalActionButtonItem> actions) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        Intrinsics.checkNotNullParameter(actions, "actions");
        return new CryptoAccountItem(user, address, networkItem, actions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoAccountItem) {
            CryptoAccountItem cryptoAccountItem = (CryptoAccountItem) obj;
            return Intrinsics.areEqual(this.user, cryptoAccountItem.user) && Intrinsics.areEqual(this.address, cryptoAccountItem.address) && Intrinsics.areEqual(this.networkItem, cryptoAccountItem.networkItem) && Intrinsics.areEqual(this.actions, cryptoAccountItem.actions);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.user.hashCode() * 31) + this.address.hashCode()) * 31) + this.networkItem.hashCode()) * 31) + this.actions.hashCode();
    }

    public String toString() {
        return "CryptoAccountItem(user=" + this.user + ", address=" + this.address + ", networkItem=" + this.networkItem + ", actions=" + this.actions + ')';
    }

    public final TLRPC$User getUser() {
        return this.user;
    }

    public final String getAddress() {
        return this.address;
    }

    public final NetworkItem getNetworkItem() {
        return this.networkItem;
    }

    public final List<HorizontalActionButtonItem> getActions() {
        return this.actions;
    }

    public CryptoAccountItem(TLRPC$User user, String address, NetworkItem networkItem, List<HorizontalActionButtonItem> actions) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.user = user;
        this.address = address;
        this.networkItem = networkItem;
        this.actions = actions;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getAccountTitleText(com.iMe.storage.domain.utils.system.ResourceManager r7) {
        /*
            r6 = this;
            java.lang.String r0 = "resourceManager"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            org.telegram.tgnet.TLRPC$User r0 = r6.user
            java.lang.String r1 = r0.username
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L16
            boolean r1 = kotlin.text.StringsKt.isBlank(r1)
            if (r1 == 0) goto L14
            goto L16
        L14:
            r1 = r2
            goto L17
        L16:
            r1 = r3
        L17:
            if (r1 == 0) goto L2a
            int r1 = org.telegram.messenger.C3632R.string.wallet_home_crypto_account_telegram_id
            java.lang.Object[] r3 = new java.lang.Object[r3]
            long r4 = r0.f1749id
            java.lang.Long r0 = java.lang.Long.valueOf(r4)
            r3[r2] = r0
            java.lang.String r7 = r7.getString(r1, r3)
            goto L3d
        L2a:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r1 = 64
            r7.append(r1)
            java.lang.String r0 = r0.username
            r7.append(r0)
            java.lang.String r7 = r7.toString()
        L3d:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.model.wallet.home.CryptoAccountItem.getAccountTitleText(com.iMe.storage.domain.utils.system.ResourceManager):java.lang.String");
    }
}
