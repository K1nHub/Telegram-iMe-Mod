package com.iMe.p031ui.wallet.staking.transaction;

import com.iMe.mapper.staking.StakingTransactionActionToFeeUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingTransactionStep;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingApprovalTokenType;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2361xfabfc97b extends Lambda implements Function1<Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>, Unit> {
    final /* synthetic */ StakingDetailsItem $data$inlined;
    final /* synthetic */ StakingApprovalTokenType $tokenType$inlined;
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2361xfabfc97b(StakingTransactionPresenter stakingTransactionPresenter, StakingApprovalTokenType stakingApprovalTokenType, StakingDetailsItem stakingDetailsItem) {
        super(1);
        this.this$0 = stakingTransactionPresenter;
        this.$tokenType$inlined = stakingApprovalTokenType;
        this.$data$inlined = stakingDetailsItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result) {
        m1516invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1516invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> it) {
        ResourceManager resourceManager;
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
            resourceManager = this.this$0.resourceManager;
            ((StakingTransactionView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
