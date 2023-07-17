package com.iMe.storage.data.manager.wallet_connect;

import com.google.gson.GsonBuilder;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.trustwallet.walletconnect.WCClient;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.exceptions.InvalidSessionException;
import com.trustwallet.walletconnect.models.WCPeerMeta;
import com.trustwallet.walletconnect.models.session.WCSession;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import okhttp3.OkHttpClient;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$connect$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ String $uri;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$connect$1(WalletConnectManagerImpl walletConnectManagerImpl, String str) {
        super(0);
        this.this$0 = walletConnectManagerImpl;
        this.$uri = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        GsonBuilder gsonBuilder;
        OkHttpClient okHttpClient;
        Map map;
        WCPeerMeta wCPeerMeta = new WCPeerMeta("iMe", "https://imem.app", null, null, 12, null);
        WalletConnectManagerImpl walletConnectManagerImpl = this.this$0;
        WCSession.Companion companion = WCSession.Companion;
        WCSession from = companion.from(this.$uri);
        if (from != null) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            WCSessionStoreItem wCSessionStoreItem = new WCSessionStoreItem(from, (int) NumberExtKt.orZero(cryptoPreferenceHelper.getNetwork().getChainId()), "", "", wCPeerMeta, false, null, 96, null);
            WalletConnectManagerImpl walletConnectManagerImpl2 = this.this$0;
            String str = this.$uri;
            gsonBuilder = walletConnectManagerImpl2.getGsonBuilder();
            okHttpClient = walletConnectManagerImpl2.okHttpClient;
            WCClient wCClient = new WCClient(gsonBuilder, okHttpClient);
            walletConnectManagerImpl2.setupClientListeners(wCClient, wCSessionStoreItem);
            map = walletConnectManagerImpl2.wcClients;
            map.put(wCSessionStoreItem.getSession().getKey(), wCClient);
            WCSession from2 = companion.from(str);
            if (from2 != null) {
                WCClient.connect$default(wCClient, from2, wCPeerMeta, null, null, 12, null);
                walletConnectManagerImpl.pendingSessionStoreItem = wCSessionStoreItem;
                return;
            }
            throw new InvalidSessionException();
        }
        throw new InvalidSessionException();
    }
}
