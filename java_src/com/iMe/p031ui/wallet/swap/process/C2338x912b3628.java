package com.iMe.p031ui.wallet.swap.process;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2338x912b3628 extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenInfo>>, Unit> {
    final /* synthetic */ Callbacks$Callback $action$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2338x912b3628(WalletSwapProcessPresenter walletSwapProcessPresenter, Callbacks$Callback callbacks$Callback) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$action$inlined = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenInfo>> result) {
        m1514invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1514invoke(Result<? extends List<? extends BinanceTokenInfo>> it) {
        ResourceManager resourceManager;
        HashMap hashMap;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTokenInfo>> result = it;
        if (result instanceof Result.Success) {
            hashMap = this.this$0.selectableSupportedSwapTokens;
            NetworkType networkType = NetworkType.BINANCE_SMART_CHAIN;
            Iterable<BinanceTokenInfo> iterable = (Iterable) ((Result.Success) result).getData();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (BinanceTokenInfo binanceTokenInfo : iterable) {
                arrayList.add(SelectableMappingKt.mapToSelectable(binanceTokenInfo));
            }
            hashMap.put(networkType, arrayList);
            this.$action$inlined.invoke();
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}