package com.iMe.p031ui.wallet.transaction.details;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsPresenter$cancelTransaction$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2424xbfdb298e extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ String $txHash$inlined;
    final /* synthetic */ WalletTransactionDetailsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2424xbfdb298e(WalletTransactionDetailsPresenter walletTransactionDetailsPresenter, String str) {
        super(1);
        this.this$0 = walletTransactionDetailsPresenter;
        this.$txHash$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1548invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1548invoke(Result<? extends String> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            ((WalletTransactionDetailsView) this.this$0.getViewState()).onSuccessCancelTransaction(this.$txHash$inlined);
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletTransactionDetailsView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
