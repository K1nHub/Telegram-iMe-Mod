package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.receive;

import com.smedialink.mapper.wallet.select.SelectableMappingKt;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2187x7b59101f extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit> {
    final /* synthetic */ Function0 $endAction$inlined;
    final /* synthetic */ boolean $withProgress$inlined;
    final /* synthetic */ WalletReceiveBinancePayPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2187x7b59101f(WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter, Function0 function0, boolean z) {
        super(1);
        this.this$0 = walletReceiveBinancePayPresenter;
        this.$endAction$inlined = function0;
        this.$withProgress$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
        m1359invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1359invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTokenInfo>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.setAvailablePaymentTokens((List) ((Result.Success) result).getData());
            WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter = this.this$0;
            walletReceiveBinancePayPresenter.setSelectableAvailablePaymentTokens(SelectableMappingKt.mapToSelectable(walletReceiveBinancePayPresenter.getAvailablePaymentTokens()));
            this.$endAction$inlined.invoke();
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletReceiveBinancePayView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        } else if ((result instanceof Result.Loading) && this.$withProgress$inlined) {
            T viewState = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, true, true, null, 4, null);
        }
    }
}
