package com.iMe.storage.data.manager.wallet_connect;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$onTransactionProcessing$1$1 extends Lambda implements Function1<Result<? extends WalletConnectProcessedTransaction>, Unit> {
    final /* synthetic */ boolean $isSignEvent;
    final /* synthetic */ long $requestId;
    final /* synthetic */ WCSessionStoreItem $sessionStoreItem;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$onTransactionProcessing$1$1(WalletConnectManagerImpl walletConnectManagerImpl, long j, WCSessionStoreItem wCSessionStoreItem, boolean z) {
        super(1);
        this.this$0 = walletConnectManagerImpl;
        this.$requestId = j;
        this.$sessionStoreItem = wCSessionStoreItem;
        this.$isSignEvent = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends WalletConnectProcessedTransaction> result) {
        invoke2((Result<WalletConnectProcessedTransaction>) result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<WalletConnectProcessedTransaction> result) {
        if (result instanceof Result.Success) {
            this.this$0.getEventsDelegate().onTransactionProcessing(this.$requestId, this.$sessionStoreItem, (WalletConnectProcessedTransaction) ((Result.Success) result).getData(), this.$isSignEvent);
        } else if (result instanceof Result.Error) {
            WalletConnectManagerImpl walletConnectManagerImpl = this.this$0;
            Intrinsics.checkNotNullExpressionValue(result, "result");
            walletConnectManagerImpl.onErrorResult((Result.Error) result);
        }
    }
}
