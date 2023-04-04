package com.iMe.p032ui.wallet.crypto.buy;

import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$purchase$lambda$6$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2103x4f19875b extends Lambda implements Function1<Result<? extends BuyingCryptoPayment>, Unit> {
    final /* synthetic */ BuyCryptoProductPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2103x4f19875b(BuyCryptoProductPresenter buyCryptoProductPresenter) {
        super(1);
        this.this$0 = buyCryptoProductPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends BuyingCryptoPayment> result) {
        m1399invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1399invoke(Result<? extends BuyingCryptoPayment> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends BuyingCryptoPayment> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.lastUsedOrderId = ((BuyingCryptoPayment) success.getData()).getOrderId();
            ((BuyCryptoProductView) this.this$0.getViewState()).showProcessingUrl(((BuyingCryptoPayment) success.getData()).getHtml());
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((BuyCryptoProductView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
