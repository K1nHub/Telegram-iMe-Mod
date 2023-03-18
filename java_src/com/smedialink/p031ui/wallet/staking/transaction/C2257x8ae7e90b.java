package com.smedialink.p031ui.wallet.staking.transaction;

import com.smedialink.model.staking.StakingTransactionStep;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingOperation;
import com.smedialink.storage.domain.model.staking.StakingOperationCost;
import com.smedialink.storage.domain.model.staking.StakingValues;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import java.math.BigDecimal;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2257x8ae7e90b extends Lambda implements Function1<Result<? extends StakingOperation>, Unit> {
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2257x8ae7e90b(StakingTransactionPresenter stakingTransactionPresenter) {
        super(1);
        this.this$0 = stakingTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingOperation> result) {
        m1403invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1403invoke(Result<? extends StakingOperation> it) {
        RxEventBus rxEventBus;
        String successTitle;
        String successMessage;
        StakingValues value;
        BigDecimal asToken;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends StakingOperation> result = it;
        if (result instanceof Result.Success) {
            StakingTransactionPresenter.onActionSuccess$default(this.this$0, StakingTransactionStep.Prepare.INSTANCE, null, null, 6, null);
            rxEventBus = this.this$0.rxEventBus;
            rxEventBus.publish(DomainRxEvents.StakingProgrammesRefresh.INSTANCE);
            StakingTransactionView stakingTransactionView = (StakingTransactionView) this.this$0.getViewState();
            successTitle = this.this$0.getSuccessTitle();
            StakingTransactionPresenter stakingTransactionPresenter = this.this$0;
            StakingOperationCost amount = ((StakingOperation) ((Result.Success) result).getData()).getAmount();
            successMessage = stakingTransactionPresenter.getSuccessMessage(NumberExtKt.orZero((amount == null || (value = amount.getValue()) == null || (asToken = value.getAsToken()) == null) ? null : Double.valueOf(asToken.doubleValue())));
            stakingTransactionView.showActionSuccess(successTitle, successMessage);
        } else if (result instanceof Result.Error) {
            this.this$0.showCommonErrorToast(((Result.Error) result).getError());
        }
    }
}
