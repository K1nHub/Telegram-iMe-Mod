package com.iMe.p031ui.wallet.swap.token;

import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2447xe8a4a06a extends Lambda implements Function1<Result<? extends List<? extends BinanceTokenBalanceInfo>>, Unit> {
    final /* synthetic */ List $tokens$inlined;
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2447xe8a4a06a(List list, WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(1);
        this.$tokens$inlined = list;
        this.this$0 = walletSelectTokenPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> result) {
        m1565invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1565invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> it) {
        ResourceManager resourceManager;
        Result.Success success;
        List<SelectableTokenItem> withExcludedSelectedToken;
        Object obj;
        boolean z;
        SelectableTokenItem selectableTokenItem;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BinanceTokenBalanceInfo>> result = it;
        if (result instanceof Result.Success) {
            List list = (List) ((Result.Success) result).getData();
            if (!((Collection) success.getData()).isEmpty()) {
                List<TokenDetailed> list2 = this.$tokens$inlined;
                ArrayList arrayList = new ArrayList();
                for (TokenDetailed tokenDetailed : list2) {
                    Iterator it2 = list.iterator();
                    while (true) {
                        selectableTokenItem = null;
                        selectableTokenItem = null;
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        if (Intrinsics.areEqual(((BinanceTokenBalanceInfo) obj).getAssetShortName(), tokenDetailed.getTicker())) {
                            break;
                        }
                    }
                    BinanceTokenBalanceInfo binanceTokenBalanceInfo = (BinanceTokenBalanceInfo) obj;
                    z = this.this$0.onlyPositiveBalance;
                    if (z) {
                        if (binanceTokenBalanceInfo != null && !NumberExtKt.isZero(Double.valueOf(binanceTokenBalanceInfo.getCombined().getTotal()))) {
                            selectableTokenItem = new SelectableTokenItem(true, tokenDetailed, SelectableMappingKt.mapToSelectableBalance(binanceTokenBalanceInfo));
                        }
                    } else {
                        selectableTokenItem = new SelectableTokenItem(true, tokenDetailed, binanceTokenBalanceInfo != null ? SelectableMappingKt.mapToSelectableBalance(binanceTokenBalanceInfo) : null);
                    }
                    if (selectableTokenItem != null) {
                        arrayList.add(selectableTokenItem);
                    }
                }
                withExcludedSelectedToken = this.this$0.withExcludedSelectedToken(arrayList);
                ((WalletSelectTokenView) this.this$0.getViewState()).renderItems(withExcludedSelectedToken);
                return;
            }
            ((WalletSelectTokenView) this.this$0.getViewState()).onEmptyState();
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().isNoConnectionStatus()) {
                ((WalletSelectTokenView) this.this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((WalletSelectTokenView) this.this$0.getViewState()).onUnexpectedErrorState();
            }
            resourceManager = this.this$0.resourceManager;
            ((WalletSelectTokenView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        } else if (result instanceof Result.Loading) {
            ((WalletSelectTokenView) this.this$0.getViewState()).onLoadingState();
        }
    }
}
