package com.iMe.storage.data.manager.wallet_connect;

import io.reactivex.subjects.PublishSubject;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectManagerImpl$disconnectAll$3 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$disconnectAll$3(WalletConnectManagerImpl walletConnectManagerImpl) {
        super(1);
        this.this$0 = walletConnectManagerImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        PublishSubject publishSubject;
        publishSubject = this.this$0.errorsSubject;
        publishSubject.onNext(th);
    }
}
