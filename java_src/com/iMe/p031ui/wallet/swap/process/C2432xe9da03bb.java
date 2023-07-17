package com.iMe.p031ui.wallet.swap.process;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2432xe9da03bb extends Lambda implements Function1<Result<? extends TokenBalance>, Unit> {
    final /* synthetic */ TokenDetailed $token$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2432xe9da03bb(WalletSwapProcessPresenter walletSwapProcessPresenter, TokenDetailed tokenDetailed) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$token$inlined = tokenDetailed;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
        m1558invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1558invoke(Result<? extends TokenBalance> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends TokenBalance> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.tokenBalance = (TokenBalance) success.getData();
            resourceManager3 = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showTokenBalance(resourceManager3.getString(C3417R.string.wallet_swap_process_my_balance, TokenBalanceExtKt.getTotalBalanceShortText((TokenBalance) success.getData())));
        } else if (result instanceof Result.Loading) {
            resourceManager2 = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showTokenBalance(resourceManager2.getString(C3417R.string.wallet_swap_process_my_balance, TokenBalanceExtKt.getTotalBalanceShortText(TokenBalance.Companion.createEmptyBalanceFor(this.$token$inlined))));
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
