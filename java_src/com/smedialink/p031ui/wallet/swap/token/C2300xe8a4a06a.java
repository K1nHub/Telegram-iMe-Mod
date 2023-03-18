package com.smedialink.p031ui.wallet.swap.token;

import com.smedialink.mapper.wallet.select.SelectableMappingKt;
import com.smedialink.model.wallet.select.SelectableTokenBalance;
import com.smedialink.model.wallet.select.SelectableTokenItem;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2300xe8a4a06a extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenBalanceInfo>>, Unit> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2300xe8a4a06a(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(1);
        this.this$0 = walletSelectTokenPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> result) {
        m1428invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1428invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> it) {
        Map supportedTokensItemsMap;
        List mutableList;
        List<SelectableTokenItem> withExcludedSelectedToken;
        ResourceManager resourceManager;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map supportedTokensItemsMap2;
        List<SelectableTokenItem> withExcludedSelectedToken2;
        boolean z;
        SelectableTokenBalance selectableTokenBalance;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTokenBalanceInfo>> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            if (!((Collection) success.getData()).isEmpty()) {
                Iterable iterable = (Iterable) success.getData();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (Object obj : iterable) {
                    linkedHashMap.put(((BinanceTokenBalanceInfo) obj).getAsset(), obj);
                }
                supportedTokensItemsMap2 = this.this$0.getSupportedTokensItemsMap();
                Collection<SelectableTokenItem> values = supportedTokensItemsMap2.values();
                ArrayList arrayList = new ArrayList();
                for (SelectableTokenItem selectableTokenItem : values) {
                    BinanceTokenBalanceInfo binanceTokenBalanceInfo = (BinanceTokenBalanceInfo) linkedHashMap.get(selectableTokenItem.getToken().getId());
                    z = this.this$0.onlyPositiveBalance;
                    SelectableTokenItem selectableTokenItem2 = null;
                    if (!z) {
                        if (binanceTokenBalanceInfo != null) {
                            resourceManager2 = this.this$0.resourceManager;
                            selectableTokenBalance = SelectableMappingKt.mapToSelectable(binanceTokenBalanceInfo, resourceManager2);
                        } else {
                            selectableTokenBalance = null;
                        }
                        selectableTokenItem2 = SelectableTokenItem.copy$default(selectableTokenItem, null, selectableTokenBalance, 1, null);
                    } else if (binanceTokenBalanceInfo != null && !NumberExtKt.isZero(Double.valueOf(binanceTokenBalanceInfo.getCombined().getTotal()))) {
                        resourceManager3 = this.this$0.resourceManager;
                        selectableTokenItem2 = SelectableTokenItem.copy$default(selectableTokenItem, null, SelectableMappingKt.mapToSelectable(binanceTokenBalanceInfo, resourceManager3), 1, null);
                    }
                    if (selectableTokenItem2 != null) {
                        arrayList.add(selectableTokenItem2);
                    }
                }
                withExcludedSelectedToken2 = this.this$0.withExcludedSelectedToken(arrayList);
                ((WalletSelectTokenView) this.this$0.getViewState()).onTokensLoaded(withExcludedSelectedToken2);
            }
        } else if (result instanceof Result.Error) {
            WalletSelectTokenPresenter walletSelectTokenPresenter = this.this$0;
            supportedTokensItemsMap = walletSelectTokenPresenter.getSupportedTokensItemsMap();
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) supportedTokensItemsMap.values());
            withExcludedSelectedToken = walletSelectTokenPresenter.withExcludedSelectedToken(mutableList);
            ((WalletSelectTokenView) this.this$0.getViewState()).onTokensLoaded(withExcludedSelectedToken);
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletSelectTokenView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        } else if (result instanceof Result.Loading) {
            ((WalletSelectTokenView) this.this$0.getViewState()).onLoadingState();
        }
    }
}
