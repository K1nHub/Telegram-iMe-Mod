package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.model.wallet.TokenBalanceExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3286R;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2287xe9da03bb extends Lambda implements Function1<Result<? extends TokenBalance>, Unit> {
    final /* synthetic */ TokenCode $token$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2287xe9da03bb(WalletSwapProcessPresenter walletSwapProcessPresenter, TokenCode tokenCode) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$token$inlined = tokenCode;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
        m1422invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1422invoke(Result<? extends TokenBalance> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
        ResourceManager resourceManager4;
        ResourceManager resourceManager5;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends TokenBalance> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.tokenBalance = (TokenBalance) success.getData();
            resourceManager4 = this.this$0.resourceManager;
            int i = C3286R.string.wallet_swap_process_my_balance;
            resourceManager5 = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showTokenBalance(resourceManager4.getString(i, TokenBalanceExtKt.getTotalBalanceShortText((TokenBalance) success.getData(), resourceManager5)));
        } else if (result instanceof Result.Loading) {
            resourceManager2 = this.this$0.resourceManager;
            int i2 = C3286R.string.wallet_swap_process_my_balance;
            TokenBalance createEmptyBalanceFor = TokenBalance.Companion.createEmptyBalanceFor(TokenInfo.Companion.map(this.$token$inlined));
            resourceManager3 = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showTokenBalance(resourceManager2.getString(i2, TokenBalanceExtKt.getTotalBalanceShortText(createEmptyBalanceFor, resourceManager3)));
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
