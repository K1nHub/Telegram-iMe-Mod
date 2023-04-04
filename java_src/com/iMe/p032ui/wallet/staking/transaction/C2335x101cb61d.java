package com.iMe.p032ui.wallet.staking.transaction;

import com.iMe.mapper.staking.StakingTransactionActionToFeeUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingTransactionStep;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3316R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2335x101cb61d extends Lambda implements Function1<Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>, Unit> {
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2335x101cb61d(StakingTransactionPresenter stakingTransactionPresenter) {
        super(1);
        this.this$0 = stakingTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result) {
        m1513invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1513invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
        ResourceManager resourceManager4;
        ResourceManager resourceManager5;
        int i;
        DialogModel feeDialogModel;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result = it;
        if (result instanceof Result.Success) {
            Pair pair = (Pair) ((Result.Success) result).getData();
            StakingTransactionPresenter stakingTransactionPresenter = this.this$0;
            StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) pair.getSecond();
            if (stakingTransactionAction != null) {
                StakingTransactionPresenter stakingTransactionPresenter2 = this.this$0;
                i = stakingTransactionPresenter2.screenType;
                StakingTransactionStep.Execute execute = new StakingTransactionStep.Execute(i);
                feeDialogModel = this.this$0.getFeeDialogModel();
                stakingTransactionPresenter2.onActionSuccess(execute, StakingTransactionActionToFeeUiMappingKt.mapToUi(stakingTransactionAction, feeDialogModel), (String) pair.getFirst());
            } else {
                stakingTransactionAction = null;
            }
            stakingTransactionPresenter.stakingTransactionAction = stakingTransactionAction;
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            IErrorStatus status = error.getError().getStatus();
            if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                this.this$0.runNoEnoughMoneyFlow();
            } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_FINISHED) {
                resourceManager5 = this.this$0.resourceManager;
                ((StakingTransactionView) this.this$0.getViewState()).showToast(resourceManager5.getString(C3316R.string.staking_replenishment_already_finished));
            } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_CLAIM_OVERLAP) {
                resourceManager3 = this.this$0.resourceManager;
                String string = resourceManager3.getString(C3316R.string.staking_profit_error_title);
                resourceManager4 = this.this$0.resourceManager;
                ((StakingTransactionView) this.this$0.getViewState()).showActionError(string, resourceManager4.getString(C3316R.string.staking_profit_overlap_error_description));
            } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_WITHDRAWAL_OVER_LIMIT) {
                resourceManager = this.this$0.resourceManager;
                String string2 = resourceManager.getString(C3316R.string.staking_withdraw_error_title);
                resourceManager2 = this.this$0.resourceManager;
                ((StakingTransactionView) this.this$0.getViewState()).showActionError(string2, resourceManager2.getString(C3316R.string.staking_withdraw_over_limit_error_description));
            } else {
                this.this$0.showCommonErrorToast(error.getError());
            }
        }
    }
}
