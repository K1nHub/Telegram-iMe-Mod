package com.iMe.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCSessionStoreItem;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$disconnect$2$1 extends Lambda implements Function1<WCSessionStoreItem, Boolean> {
    final /* synthetic */ String $sessionKey;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$disconnect$2$1(String str) {
        super(1);
        this.$sessionKey = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(WCSessionStoreItem it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(Intrinsics.areEqual(it.getSession().getKey(), this.$sessionKey));
    }
}
