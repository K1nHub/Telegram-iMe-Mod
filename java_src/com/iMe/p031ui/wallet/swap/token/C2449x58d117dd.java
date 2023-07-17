package com.iMe.p031ui.wallet.swap.token;

import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2449x58d117dd extends Lambda implements Function1<Result<? extends List<? extends TokenBalance>>, Unit> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2449x58d117dd(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(1);
        this.this$0 = walletSelectTokenPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TokenBalance>> result) {
        m1566invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1566invoke(Result<? extends List<? extends TokenBalance>> it) {
        ResourceManager resourceManager;
        List<SelectableTokenItem> withExcludedSelectedToken;
        boolean z;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends TokenBalance>> result = it;
        if (result instanceof Result.Success) {
            List<TokenBalance> list = (List) ((Result.Success) result).getData();
            if (!(!list.isEmpty())) {
                ((WalletSelectTokenView) this.this$0.getViewState()).onEmptyState();
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (TokenBalance tokenBalance : list) {
                z = this.this$0.onlyPositiveBalance;
                SelectableTokenItem selectableTokenItem = (z && NumberExtKt.isZero(Double.valueOf(tokenBalance.getTotal()))) ? null : new SelectableTokenItem(false, tokenBalance.getToken(), SelectableMappingKt.mapToSelectableBalance(tokenBalance));
                if (selectableTokenItem != null) {
                    arrayList.add(selectableTokenItem);
                }
            }
            withExcludedSelectedToken = this.this$0.withExcludedSelectedToken(arrayList);
            ((WalletSelectTokenView) this.this$0.getViewState()).renderItems(withExcludedSelectedToken);
        } else if (result instanceof Result.Loading) {
            ((WalletSelectTokenView) this.this$0.getViewState()).onLoadingState();
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().isNoConnectionStatus()) {
                ((WalletSelectTokenView) this.this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((WalletSelectTokenView) this.this$0.getViewState()).onUnexpectedErrorState();
            }
            resourceManager = this.this$0.resourceManager;
            ((WalletSelectTokenView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        }
    }
}
