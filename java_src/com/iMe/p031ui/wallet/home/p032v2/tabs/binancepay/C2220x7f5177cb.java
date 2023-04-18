package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2220x7f5177cb extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenBalanceInfo>>, Unit> {
    final /* synthetic */ WalletHomeBinancePayPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2220x7f5177cb(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter) {
        super(1);
        this.this$0 = walletHomeBinancePayPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> result) {
        m1441invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1441invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTokenBalanceInfo>> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.setBalances((List) success.getData());
            WalletHomeBinancePayPresenter.renderScreenItems$default(this.this$0, false, (List) success.getData(), 1, null);
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletHomeBinancePayView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
