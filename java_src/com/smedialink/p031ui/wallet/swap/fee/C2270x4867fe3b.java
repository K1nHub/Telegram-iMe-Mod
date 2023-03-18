package com.smedialink.p031ui.wallet.swap.fee;

import com.smedialink.model.wallet.crypto.send.fee.GasPriceItem;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.swap.fee.WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2270x4867fe3b extends Lambda implements Function1<Result<? extends CryptoSwapMetadata>, Unit> {
    final /* synthetic */ WalletSwapFeePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2270x4867fe3b(WalletSwapFeePresenter walletSwapFeePresenter) {
        super(1);
        this.this$0 = walletSwapFeePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoSwapMetadata> result) {
        m1409invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1409invoke(Result<? extends CryptoSwapMetadata> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends CryptoSwapMetadata> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.setMetadata((CryptoSwapMetadata) success.getData());
            WalletSwapFeePresenter walletSwapFeePresenter = this.this$0;
            walletSwapFeePresenter.setSelectedFee(new GasPriceItem(walletSwapFeePresenter.getSelectedFee().getSpeedLevel(), TokenInfo.Companion.map(((CryptoSwapMetadata) success.getData()).getFeeTokenCode()), ((CryptoSwapMetadata) success.getData()).getTransactionParams().getFeeByLevel(this.this$0.getSelectedFee().getSpeedLevel())));
            ((WalletSwapFeeView) this.this$0.getViewState()).onFeeReselected();
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapFeeView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
