package com.smedialink.p031ui.wallet.staking.calculator;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2237x30d40fe4 extends Lambda implements Function1<Result<? extends TokenBalance>, Unit> {
    final /* synthetic */ StakingCalculatorPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2237x30d40fe4(StakingCalculatorPresenter stakingCalculatorPresenter) {
        super(1);
        this.this$0 = stakingCalculatorPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
        m1391invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1391invoke(Result<? extends TokenBalance> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends TokenBalance> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.tokenBalance = (TokenBalance) success.getData();
            ((StakingCalculatorView) this.this$0.getViewState()).showBalance((TokenBalance) success.getData());
        } else if (result instanceof Result.Error) {
            this.this$0.showCommonErrorToast(((Result.Error) result).getError());
        }
    }
}
