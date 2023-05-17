package com.iMe.p031ui.wallet.swap.process;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3290R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2383xe9da03bb extends Lambda implements Function1<Result<? extends TokenBalance>, Unit> {
    final /* synthetic */ TokenCode $token$inlined;
    final /* synthetic */ WalletSwapProcessPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2383xe9da03bb(WalletSwapProcessPresenter walletSwapProcessPresenter, TokenCode tokenCode) {
        super(1);
        this.this$0 = walletSwapProcessPresenter;
        this.$token$inlined = tokenCode;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
        m1536invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1536invoke(Result<? extends TokenBalance> it) {
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
            int i = C3290R.string.wallet_swap_process_my_balance;
            resourceManager5 = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showTokenBalance(resourceManager4.getString(i, TokenBalanceExtKt.getTotalBalanceShortText((TokenBalance) success.getData(), resourceManager5)));
        } else if (result instanceof Result.Loading) {
            resourceManager2 = this.this$0.resourceManager;
            int i2 = C3290R.string.wallet_swap_process_my_balance;
            TokenBalance createEmptyBalanceFor = TokenBalance.Companion.createEmptyBalanceFor(TokenInfo.Companion.map(this.$token$inlined));
            resourceManager3 = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showTokenBalance(resourceManager2.getString(i2, TokenBalanceExtKt.getTotalBalanceShortText(createEmptyBalanceFor, resourceManager3)));
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((WalletSwapProcessView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
