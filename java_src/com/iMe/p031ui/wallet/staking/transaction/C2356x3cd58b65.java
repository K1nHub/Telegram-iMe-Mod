package com.iMe.p031ui.wallet.staking.transaction;

import com.iMe.model.staking.StakingTransactionStep;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingApprovalInfo;
import com.iMe.storage.domain.model.staking.StakingApprovalTokenType;
import com.iMe.storage.domain.model.staking.StakingTokenApprovalStatus;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2356x3cd58b65 extends Lambda implements Function1<Result<? extends StakingApprovalInfo>, Unit> {
    final /* synthetic */ boolean $isInitialLoad$inlined;
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2356x3cd58b65(boolean z, StakingTransactionPresenter stakingTransactionPresenter) {
        super(1);
        this.$isInitialLoad$inlined = z;
        this.this$0 = stakingTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingApprovalInfo> result) {
        m1513invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1513invoke(Result<? extends StakingApprovalInfo> it) {
        ResourceManager resourceManager;
        Disposable disposable;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends StakingApprovalInfo> result = it;
        if (result instanceof Result.Success) {
            StakingApprovalInfo stakingApprovalInfo = (StakingApprovalInfo) ((Result.Success) result).getData();
            StakingTokenApprovalStatus token = stakingApprovalInfo.getToken();
            StakingTokenApprovalStatus stakingTokenApprovalStatus = StakingTokenApprovalStatus.NONE;
            if (token == stakingTokenApprovalStatus) {
                this.this$0.prepareTokenApproval(StakingApprovalTokenType.STAKING);
            } else if (stakingApprovalInfo.getFeeToken() == stakingTokenApprovalStatus) {
                this.this$0.prepareTokenApproval(StakingApprovalTokenType.FEE);
            } else {
                StakingTokenApprovalStatus token2 = stakingApprovalInfo.getToken();
                StakingTokenApprovalStatus stakingTokenApprovalStatus2 = StakingTokenApprovalStatus.CONFIRMED;
                if (token2 == stakingTokenApprovalStatus2 && stakingApprovalInfo.getFeeToken() == stakingTokenApprovalStatus2) {
                    disposable = this.this$0.tokensApprovalStatusUpdateDisposable;
                    disposable.dispose();
                    this.this$0.currentStep = StakingTransactionStep.Prepare.INSTANCE;
                    ((StakingTransactionView) this.this$0.getViewState()).updateStakingStep();
                    return;
                }
                this.this$0.currentStep = StakingTransactionStep.ApprovalProcessing.INSTANCE;
                ((StakingTransactionView) this.this$0.getViewState()).updateStakingStep();
                StakingTransactionPresenter.checkTokensApproval$default(this.this$0, false, 1, null);
            }
        } else if (result instanceof Result.Error) {
            if (this.$isInitialLoad$inlined) {
                this.this$0.currentStep = StakingTransactionStep.RetryLoading.INSTANCE;
                ((StakingTransactionView) this.this$0.getViewState()).updateStakingStep();
            }
            resourceManager = this.this$0.resourceManager;
            ((StakingTransactionView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}