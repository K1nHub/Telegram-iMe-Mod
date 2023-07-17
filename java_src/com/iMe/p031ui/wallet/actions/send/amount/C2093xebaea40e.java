package com.iMe.p031ui.wallet.actions.send.amount;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2093xebaea40e extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit> {
    final /* synthetic */ Callbacks$Callback $action$inlined;
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2093xebaea40e(WalletSendAmountPresenter walletSendAmountPresenter, Callbacks$Callback callbacks$Callback) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
        this.$action$inlined = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
        m1396invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1396invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
        ResourceManager resourceManager;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTokenInfo>> result = it;
        if (result instanceof Result.Success) {
            WalletSendAmountPresenter walletSendAmountPresenter = this.this$0;
            Iterable<BinanceTokenInfo> iterable = (Iterable) ((Result.Success) result).getData();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (BinanceTokenInfo binanceTokenInfo : iterable) {
                arrayList.add(SelectableMappingKt.mapToDetailedToken(binanceTokenInfo));
            }
            walletSendAmountPresenter.availableTokensForBinanceReplenish = arrayList;
            this.$action$inlined.invoke();
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                this.this$0.runNoEnoughMoneyFlow();
                return;
            }
            resourceManager = this.this$0.resourceManager;
            ((WalletSendAmountView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        }
    }
}
