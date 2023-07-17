package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.storage.domain.model.Result;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2451xb82e950c extends Lambda implements Function1<Result<? extends List<? extends SelectableTokenItem>>, Unit> {
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ boolean $isReload$inlined;
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2451xb82e950c(WalletSelectTokenPresenter walletSelectTokenPresenter, boolean z, boolean z2) {
        super(1);
        this.this$0 = walletSelectTokenPresenter;
        this.$isLoadMore$inlined = z;
        this.$isReload$inlined = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends SelectableTokenItem>> result) {
        m1567invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1567invoke(Result<? extends List<? extends SelectableTokenItem>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends SelectableTokenItem>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.onSwapTokensSuccess((List) ((Result.Success) result).getData(), this.$isLoadMore$inlined);
        } else if (result instanceof Result.Loading) {
            if (this.$isReload$inlined) {
                ((WalletSelectTokenView) this.this$0.getViewState()).onLoadingState();
            }
        } else if (result instanceof Result.Error) {
            if (this.$isLoadMore$inlined) {
                ((WalletSelectTokenView) this.this$0.getViewState()).onLoadMoreError();
            } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                ((WalletSelectTokenView) this.this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((WalletSelectTokenView) this.this$0.getViewState()).onUnexpectedErrorState();
            }
        }
    }
}
