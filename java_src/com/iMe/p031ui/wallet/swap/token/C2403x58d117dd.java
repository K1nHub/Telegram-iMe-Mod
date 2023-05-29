package com.iMe.p031ui.wallet.swap.token;

import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.wallet.select.SelectableTokenBalance;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.system.ResourceManager;
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
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2403x58d117dd extends Lambda implements Function1<Result<? extends List<? extends TokenBalance>>, Unit> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2403x58d117dd(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(1);
        this.this$0 = walletSelectTokenPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TokenBalance>> result) {
        m1544invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1544invoke(Result<? extends List<? extends TokenBalance>> it) {
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
        Result<? extends List<? extends TokenBalance>> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            if (!((Collection) success.getData()).isEmpty()) {
                Iterable iterable = (Iterable) success.getData();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (Object obj : iterable) {
                    linkedHashMap.put(((TokenBalance) obj).getCode().getName(), obj);
                }
                supportedTokensItemsMap2 = this.this$0.getSupportedTokensItemsMap();
                Collection<SelectableTokenItem> values = supportedTokensItemsMap2.values();
                ArrayList arrayList = new ArrayList();
                for (SelectableTokenItem selectableTokenItem : values) {
                    TokenBalance tokenBalance = (TokenBalance) linkedHashMap.get(selectableTokenItem.getToken().getId());
                    z = this.this$0.onlyPositiveBalance;
                    SelectableTokenItem selectableTokenItem2 = null;
                    if (!z) {
                        if (tokenBalance != null) {
                            resourceManager2 = this.this$0.resourceManager;
                            selectableTokenBalance = SelectableMappingKt.mapToSelectable(tokenBalance, resourceManager2);
                        } else {
                            selectableTokenBalance = null;
                        }
                        selectableTokenItem2 = SelectableTokenItem.copy$default(selectableTokenItem, null, selectableTokenBalance, 1, null);
                    } else if (tokenBalance != null && !NumberExtKt.isZero(Float.valueOf(tokenBalance.getTotalInDollars()))) {
                        resourceManager3 = this.this$0.resourceManager;
                        selectableTokenItem2 = SelectableTokenItem.copy$default(selectableTokenItem, null, SelectableMappingKt.mapToSelectable(tokenBalance, resourceManager3), 1, null);
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
            resourceManager = this.this$0.resourceManager;
            ((WalletSelectTokenView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        } else if (result instanceof Result.Loading) {
            ((WalletSelectTokenView) this.this$0.getViewState()).onLoadingState();
        }
    }
}
