package com.iMe.storage.data.manager.wallet_connect;

import com.iMe.storage.domain.model.Result;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$connectToStoredSessions$1 extends Lambda implements Function1<Result<? extends List<? extends WCSessionStoreItem>>, Unit> {
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$connectToStoredSessions$1(WalletConnectManagerImpl walletConnectManagerImpl) {
        super(1);
        this.this$0 = walletConnectManagerImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends WCSessionStoreItem>> result) {
        invoke2((Result<? extends List<WCSessionStoreItem>>) result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<? extends List<WCSessionStoreItem>> result) {
        int collectionSizeOrDefault;
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                WalletConnectManagerImpl walletConnectManagerImpl = this.this$0;
                Intrinsics.checkNotNullExpressionValue(result, "result");
                walletConnectManagerImpl.onErrorResult((Result.Error) result);
                return;
            }
            return;
        }
        Iterable<WCSessionStoreItem> iterable = (Iterable) ((Result.Success) result).getData();
        WalletConnectManagerImpl walletConnectManagerImpl2 = this.this$0;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WCSessionStoreItem wCSessionStoreItem : iterable) {
            walletConnectManagerImpl2.mapSessionStoreItem(wCSessionStoreItem);
            arrayList.add(Unit.INSTANCE);
        }
    }
}
