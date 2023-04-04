package com.iMe.p032ui.wallet.actions.send.amount;

import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2064xd63210e4 extends Lambda implements Function1<Result<? extends TokenBalance>, Unit> {
    final /* synthetic */ TokenCode $code$inlined;
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2064xd63210e4(WalletSendAmountPresenter walletSendAmountPresenter, TokenCode tokenCode) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
        this.$code$inlined = tokenCode;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
        m1382invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1382invoke(Result<? extends TokenBalance> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends TokenBalance> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.tokenBalance = (TokenBalance) success.getData();
            ((WalletSendAmountView) this.this$0.getViewState()).showBalance((TokenBalance) success.getData());
        } else if (result instanceof Result.Loading) {
            this.this$0.tokenBalance = TokenBalance.Companion.createEmptyBalanceFor(TokenInfo.Companion.map(this.$code$inlined));
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletSendAmountView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
