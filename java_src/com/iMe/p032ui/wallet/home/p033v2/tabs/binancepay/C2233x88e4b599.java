package com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay;

import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceAuthTokens;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2233x88e4b599 extends Lambda implements Function1<Result<? extends BinanceAuthTokens>, Unit> {
    final /* synthetic */ WalletHomeBinancePayPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2233x88e4b599(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter) {
        super(1);
        this.this$0 = walletHomeBinancePayPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends BinanceAuthTokens> result) {
        m1457invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1457invoke(Result<? extends BinanceAuthTokens> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends BinanceAuthTokens> result = it;
        if (result instanceof Result.Success) {
            this.this$0.loadScreenInfo();
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletHomeBinancePayView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
