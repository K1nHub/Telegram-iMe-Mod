package com.iMe.p031ui.wallet.staking.transaction;

import com.iMe.model.staking.StakingTransactionStep;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2355x63b00ecd extends Lambda implements Function1<Result<? extends StakingOperation>, Unit> {
    final /* synthetic */ StakingTransactionPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2355x63b00ecd(StakingTransactionPresenter stakingTransactionPresenter) {
        super(1);
        this.this$0 = stakingTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingOperation> result) {
        m1513invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1513invoke(Result<? extends StakingOperation> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends StakingOperation> result = it;
        if (result instanceof Result.Success) {
            StakingTransactionPresenter.onActionSuccess$default(this.this$0, StakingTransactionStep.ApprovalProcessing.INSTANCE, null, null, 6, null);
            StakingTransactionPresenter.checkTokensApproval$default(this.this$0, false, 1, null);
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((StakingTransactionView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
