package com.smedialink.p031ui.wallet.staking.calculator;

import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2235xca1b89cb extends Lambda implements Function1<Result<? extends AccountLevel>, Unit> {
    final /* synthetic */ StakingDetailsItem $stakingDetails$inlined;
    final /* synthetic */ StakingCalculatorPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2235xca1b89cb(StakingCalculatorPresenter stakingCalculatorPresenter, StakingDetailsItem stakingDetailsItem) {
        super(1);
        this.this$0 = stakingCalculatorPresenter;
        this.$stakingDetails$inlined = stakingDetailsItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AccountLevel> result) {
        m1390invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1390invoke(Result<? extends AccountLevel> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends AccountLevel> result = it;
        if (result instanceof Result.Success) {
            this.this$0.openStakingCheckingAccountLevel(this.$stakingDetails$inlined, (AccountLevel) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            this.this$0.showCommonErrorToast(((Result.Error) result).getError());
        }
    }
}
