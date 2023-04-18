package com.iMe.p031ui.wallet.swap.process;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2336x9b0acc81 extends Lambda implements Function1<Result<? extends List<? extends OutputConvertToken>>, Unit> {
    final /* synthetic */ Callbacks$Callback $callback$inlined;
    final /* synthetic */ String $token$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2336x9b0acc81(WalletSwapProcessPresenter walletSwapProcessPresenter, String str, Callbacks$Callback callbacks$Callback) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$token$inlined = str;
        this.$callback$inlined = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends OutputConvertToken>> result) {
        m1513invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1513invoke(Result<? extends List<? extends OutputConvertToken>> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends OutputConvertToken>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.binanceAvailableOppositeSelectableSwapTokens = TuplesKt.m80to(this.$token$inlined, ((Result.Success) result).getData());
            this.$callback$inlined.invoke();
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
