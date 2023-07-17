package com.iMe.p031ui.wallet.staking.transaction;

import com.iMe.model.staking.StakingTransactionStep;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingOperationCost;
import com.iMe.storage.domain.model.staking.StakingValues;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.math.BigDecimal;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2404x8ae7e90b extends Lambda implements Function1<Result<? extends StakingOperation>, Unit> {
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2404x8ae7e90b(StakingTransactionPresenter stakingTransactionPresenter) {
        super(1);
        this.this$0 = stakingTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingOperation> result) {
        m1537invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1537invoke(Result<? extends StakingOperation> it) {
        ResourceManager resourceManager;
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
            resourceManager = this.this$0.resourceManager;
            ((StakingTransactionView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
