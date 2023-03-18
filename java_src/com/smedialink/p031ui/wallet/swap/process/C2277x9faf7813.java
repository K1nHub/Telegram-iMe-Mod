package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2277x9faf7813 extends Lambda implements Function1<Result<? extends List<? extends CryptoTokenApproveMetadata>>, Unit> {
    final /* synthetic */ boolean $isWithForceLoadingDialog$inlined;
    final /* synthetic */ boolean $isWithTimer$inlined;
    final /* synthetic */ NetworkType $selectedNetwork$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2277x9faf7813(WalletSwapProcessPresenter walletSwapProcessPresenter, NetworkType networkType, boolean z, boolean z2) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$selectedNetwork$inlined = networkType;
        this.$isWithTimer$inlined = z;
        this.$isWithForceLoadingDialog$inlined = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends CryptoTokenApproveMetadata>> result) {
        m1417invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1417invoke(Result<? extends List<? extends CryptoTokenApproveMetadata>> it) {
        HashMap hashMap;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends CryptoTokenApproveMetadata>> result = it;
        if (result instanceof Result.Success) {
            hashMap = this.this$0.approveTokensMetadata;
            Result.Success success = (Result.Success) result;
            hashMap.put(this.$selectedNetwork$inlined, success.getData());
            this.this$0.checkSelectedTokenApprove();
            this.this$0.startUpdatingApproveMetadataIfNeed((List) success.getData(), this.$isWithTimer$inlined);
        } else if ((result instanceof Result.Loading) && this.$isWithForceLoadingDialog$inlined) {
            T viewState = this.this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, true, false, null, 4, null);
        }
    }
}
