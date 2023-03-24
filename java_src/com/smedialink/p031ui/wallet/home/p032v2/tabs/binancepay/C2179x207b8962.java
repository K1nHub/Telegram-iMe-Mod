package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay;

import com.smedialink.model.wallet.home.pay.BinanceAccountItem;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2179x207b8962 extends Lambda implements Function1<Result<? extends BinanceUserInfo>, Unit> {
    final /* synthetic */ WalletHomeBinancePayPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2179x207b8962(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter) {
        super(1);
        this.this$0 = walletHomeBinancePayPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends BinanceUserInfo> result) {
        m1366invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1366invoke(Result<? extends BinanceUserInfo> it) {
        ResourceManager resourceManager;
        List resolveActions;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends BinanceUserInfo> result = it;
        if (result instanceof Result.Success) {
            resolveActions = this.this$0.resolveActions();
            ((WalletHomeBinancePayView) this.this$0.getViewState()).showUserInfo(new BinanceAccountItem((BinanceUserInfo) ((Result.Success) result).getData(), resolveActions));
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletHomeBinancePayView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
