package com.iMe.p031ui.wallet.crypto.settings.blockchains;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter$handleWalletDeletionResult$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2175x42676ad extends Lambda implements Function1<Result<? extends T>, Unit> {
    final /* synthetic */ BlockchainsManagementPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2175x42676ad(BlockchainsManagementPresenter blockchainsManagementPresenter) {
        super(1);
        this.this$0 = blockchainsManagementPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
        invoke2(obj);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<? extends T> it) {
        CryptoAccessManager cryptoAccessManager;
        RxEventBus rxEventBus;
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends T> result = it;
        if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((BlockchainsManagementView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        } else if (result instanceof Result.Success) {
            cryptoAccessManager = this.this$0.cryptoAccessManager;
            if (!cryptoAccessManager.getAllWallets().isEmpty()) {
                this.this$0.showWallets();
                return;
            }
            ((BlockchainsManagementView) this.this$0.getViewState()).finishScreen();
            rxEventBus = this.this$0.rxEventBus;
            rxEventBus.publish(DomainRxEvents.AllWalletsReset.INSTANCE);
        }
    }
}
