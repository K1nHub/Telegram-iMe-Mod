package com.smedialink.p031ui.wallet.staking;

import com.smedialink.model.staking.StakingDashboardItem;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingTotalStats;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.staking.StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2233xdeaf3e3c extends Lambda implements Function1<Result<? extends StakingTotalStats>, Unit> {
    final /* synthetic */ boolean $isInitialLoad$inlined;
    final /* synthetic */ StakingPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2233xdeaf3e3c(StakingPresenter stakingPresenter, boolean z) {
        super(1);
        this.this$0 = stakingPresenter;
        this.$isInitialLoad$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingTotalStats> result) {
        m1389invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1389invoke(Result<? extends StakingTotalStats> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends StakingTotalStats> result = it;
        boolean z = result instanceof Result.Loading;
        this.this$0.isDashboardRefreshing = z;
        this.this$0.updateRefreshState();
        if (result instanceof Result.Success) {
            StakingTotalStats stakingTotalStats = (StakingTotalStats) ((Result.Success) result).getData();
            ((StakingView) this.this$0.getViewState()).updateDashboardItem(new StakingDashboardItem.Data(stakingTotalStats.getTotalStakedUsd(), stakingTotalStats.getTotalProfitUsd()));
        } else if (z) {
            if (this.$isInitialLoad$inlined) {
                ((StakingView) this.this$0.getViewState()).updateDashboardItem(StakingDashboardItem.Loading.INSTANCE);
            }
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((StakingView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
