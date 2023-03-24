package com.smedialink.manager.wallet.create;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.manager.wallet.create.WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1483x5bee52ad extends Lambda implements Function1<Result<? extends Wallet>, Unit> {
    final /* synthetic */ WalletCreateManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1483x5bee52ad(WalletCreateManager walletCreateManager) {
        super(1);
        this.this$0 = walletCreateManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
        m1171invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1171invoke(Result<? extends Wallet> it) {
        WalletCreateManagerView viewState;
        ResourceManager resourceManager;
        RxEventBus rxEventBus;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Wallet> result = it;
        if (result instanceof Result.Success) {
            rxEventBus = this.this$0.rxEventBus;
            rxEventBus.publish(DomainRxEvents.SuccessCreateWallet.INSTANCE);
        } else if (result instanceof Result.Error) {
            viewState = this.this$0.getViewState();
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            viewState.showToast(error.getMessage(resourceManager));
        }
    }
}
