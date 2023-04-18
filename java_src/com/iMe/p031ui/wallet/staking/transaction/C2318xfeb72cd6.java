package com.iMe.p031ui.wallet.staking.transaction;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2318xfeb72cd6 extends Lambda implements Function1<Result<? extends TokenBalance>, Unit> {
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2318xfeb72cd6(StakingTransactionPresenter stakingTransactionPresenter) {
        super(1);
        this.this$0 = stakingTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
        m1495invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1495invoke(Result<? extends TokenBalance> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends TokenBalance> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            this.this$0.tokenBalance = (TokenBalance) success.getData();
            ((StakingTransactionView) this.this$0.getViewState()).showBalance((TokenBalance) success.getData());
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((StakingTransactionView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
