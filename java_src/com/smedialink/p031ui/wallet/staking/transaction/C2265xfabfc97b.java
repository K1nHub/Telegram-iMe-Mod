package com.smedialink.p031ui.wallet.staking.transaction;

import com.smedialink.mapper.staking.StakingTransactionActionToFeeUiMappingKt;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.staking.StakingTransactionStep;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingApprovalTokenType;
import com.smedialink.storage.domain.model.staking.StakingTransactionAction;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2265xfabfc97b extends Lambda implements Function1<Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>, Unit> {
    final /* synthetic */ StakingDetailsItem $data$inlined;
    final /* synthetic */ StakingApprovalTokenType $tokenType$inlined;
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2265xfabfc97b(StakingTransactionPresenter stakingTransactionPresenter, StakingApprovalTokenType stakingApprovalTokenType, StakingDetailsItem stakingDetailsItem) {
        super(1);
        this.this$0 = stakingTransactionPresenter;
        this.$tokenType$inlined = stakingApprovalTokenType;
        this.$data$inlined = stakingDetailsItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result) {
        m1407invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1407invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> it) {
        DialogModel feeDialogModel;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result = it;
        if (result instanceof Result.Success) {
            Pair pair = (Pair) ((Result.Success) result).getData();
            StakingTransactionPresenter stakingTransactionPresenter = this.this$0;
            StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) pair.getSecond();
            if (stakingTransactionAction != null) {
                StakingTransactionPresenter stakingTransactionPresenter2 = this.this$0;
                StakingTransactionStep.ApprovalNeeded approvalNeeded = this.$tokenType$inlined == StakingApprovalTokenType.STAKING ? new StakingTransactionStep.ApprovalNeeded(this.$data$inlined.getTokenTicker()) : new StakingTransactionStep.ApprovalNeeded(this.$data$inlined.getFeeTokenTicker());
                feeDialogModel = this.this$0.getFeeDialogModel();
                stakingTransactionPresenter2.onActionSuccess(approvalNeeded, StakingTransactionActionToFeeUiMappingKt.mapToUi(stakingTransactionAction, feeDialogModel), (String) pair.getFirst());
            } else {
                stakingTransactionAction = null;
            }
            stakingTransactionPresenter.stakingTransactionAction = stakingTransactionAction;
        } else if (result instanceof Result.Error) {
            this.this$0.showCommonErrorToast(((Result.Error) result).getError());
        }
    }
}
