package com.iMe.p031ui.wallet.home.tabs.binancepay.receive;

import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2303x7b59101f extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit> {
    final /* synthetic */ Function0 $endAction$inlined;
    final /* synthetic */ boolean $withProgress$inlined;
    final /* synthetic */ WalletReceiveBinancePayPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2303x7b59101f(WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter, Function0 function0, boolean z) {
        super(1);
        this.this$0 = walletReceiveBinancePayPresenter;
        this.$endAction$inlined = function0;
        this.$withProgress$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
        m1489invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1489invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTokenInfo>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.setAvailablePaymentTokens((List) ((Result.Success) result).getData());
            WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter = this.this$0;
            walletReceiveBinancePayPresenter.setSelectableAvailablePaymentTokens(SelectableMappingKt.mapToDetailedToken(walletReceiveBinancePayPresenter.getAvailablePaymentTokens()));
            this.$endAction$inlined.invoke();
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletReceiveBinancePayView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        } else if ((result instanceof Result.Loading) && this.$withProgress$inlined) {
            T viewState = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.CC.showLoadingDialog$default((BaseView) viewState, true, true, null, 4, null);
        }
    }
}
