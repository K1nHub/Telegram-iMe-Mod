package com.smedialink.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCClient;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import io.reactivex.subjects.PublishSubject;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$setupClientListeners$1$2 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ WCSessionStoreItem $sessionStoreItem;
    final /* synthetic */ WCClient $this_with;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$setupClientListeners$1$2(WCSessionStoreItem wCSessionStoreItem, WalletConnectManagerImpl walletConnectManagerImpl, WCClient wCClient) {
        super(1);
        this.$sessionStoreItem = wCSessionStoreItem;
        this.this$0 = walletConnectManagerImpl;
        this.$this_with = wCClient;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable it) {
        PublishSubject publishSubject;
        Intrinsics.checkNotNullParameter(it, "it");
        if ((it instanceof SocketException) || (it instanceof SocketTimeoutException)) {
            WCSessionStoreItem wCSessionStoreItem = this.$sessionStoreItem;
            this.$this_with.connect(wCSessionStoreItem.getSession(), wCSessionStoreItem.getRemotePeerMeta(), wCSessionStoreItem.getPeerId(), wCSessionStoreItem.getRemotePeerId());
        }
        publishSubject = this.this$0.errorsSubject;
        publishSubject.onNext(it);
    }
}
