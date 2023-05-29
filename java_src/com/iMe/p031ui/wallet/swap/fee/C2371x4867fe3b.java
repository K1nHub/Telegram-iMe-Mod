package com.iMe.p031ui.wallet.swap.fee;

import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2371x4867fe3b extends Lambda implements Function1<Result<? extends CryptoSwapMetadata>, Unit> {
    final /* synthetic */ WalletSwapFeePresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2371x4867fe3b(WalletSwapFeePresenter walletSwapFeePresenter) {
        super(1);
        this.this$0 = walletSwapFeePresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoSwapMetadata> result) {
        m1521invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1521invoke(Result<? extends CryptoSwapMetadata> it) {
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
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapFeeView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}