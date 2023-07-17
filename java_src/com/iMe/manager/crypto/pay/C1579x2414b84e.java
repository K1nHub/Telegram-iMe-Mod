package com.iMe.manager.crypto.pay;

import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.manager.crypto.pay.BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1579x2414b84e extends Lambda implements Function1<Result<? extends BinanceTransaction>, Unit> {
    final /* synthetic */ AndroidActivityHolder $holder$inlined;
    final /* synthetic */ BinancePayProcessManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1579x2414b84e(BinancePayProcessManager binancePayProcessManager, AndroidActivityHolder androidActivityHolder) {
        super(1);
        this.this$0 = binancePayProcessManager;
        this.$holder$inlined = androidActivityHolder;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends BinanceTransaction> result) {
        m1279invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1279invoke(Result<? extends BinanceTransaction> it) {
        BinancePayProcessView viewState;
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends BinanceTransaction> result = it;
        if (result instanceof Result.Success) {
            this.this$0.pay(this.$holder$inlined, (BinanceTransaction) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            viewState = this.this$0.getViewState();
            resourceManager = this.this$0.resourceManager;
            viewState.showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
