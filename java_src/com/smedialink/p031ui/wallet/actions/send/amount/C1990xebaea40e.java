package com.smedialink.p031ui.wallet.actions.send.amount;

import com.smedialink.mapper.wallet.select.SelectableMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.Callbacks$Callback;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1990xebaea40e extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit> {
    final /* synthetic */ Callbacks$Callback $action$inlined;
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1990xebaea40e(WalletSendAmountPresenter walletSendAmountPresenter, Callbacks$Callback callbacks$Callback) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
        this.$action$inlined = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
        m1283invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1283invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
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
                arrayList.add(SelectableMappingKt.mapToSelectable(binanceTokenInfo));
            }
            walletSendAmountPresenter.availableTokensForBinanceReplenish = arrayList;
            this.$action$inlined.invoke();
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                this.this$0.runNoEnoughMoneyFlow();
                return;
            }
            ErrorModel error2 = error.getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletSendAmountView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager));
        }
    }
}
