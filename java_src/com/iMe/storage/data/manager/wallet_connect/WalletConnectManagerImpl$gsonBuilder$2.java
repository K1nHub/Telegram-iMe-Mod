package com.iMe.storage.data.manager.wallet_connect;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$gsonBuilder$2 extends Lambda implements Function0<GsonBuilder> {
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$gsonBuilder$2(WalletConnectManagerImpl walletConnectManagerImpl) {
        super(0);
        this.this$0 = walletConnectManagerImpl;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final GsonBuilder invoke() {
        Gson gson;
        gson = this.this$0.gson;
        return gson.newBuilder();
    }
}
