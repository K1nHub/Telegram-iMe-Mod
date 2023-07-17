package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.storage.domain.model.Result;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2453x50df3983 extends Lambda implements Function1<Result<? extends List<? extends SelectableTokenItem>>, Unit> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2453x50df3983(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(1);
        this.this$0 = walletSelectTokenPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends SelectableTokenItem>> result) {
        m1568invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1568invoke(Result<? extends List<? extends SelectableTokenItem>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends SelectableTokenItem>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.onSwapTokensSuccess((List) ((Result.Success) result).getData(), false);
        } else if (result instanceof Result.Loading) {
            ((WalletSelectTokenView) this.this$0.getViewState()).onLoadingState();
        } else if (result instanceof Result.Error) {
            if (((Result.Error) result).getError().isNoConnectionStatus()) {
                ((WalletSelectTokenView) this.this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((WalletSelectTokenView) this.this$0.getViewState()).onUnexpectedErrorState();
            }
        }
    }
}
