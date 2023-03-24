package com.smedialink.p031ui.wallet.staking.programmes;

import com.smedialink.model.state.GlobalState;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingProgrammes;
import com.smedialink.storage.domain.model.staking.StakingTabType;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2267x899d4c1 extends Lambda implements Function1<Result<? extends StakingProgrammes>, Unit> {
    final /* synthetic */ boolean $isInitialLoad$inlined;
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ boolean $isReload$inlined;
    final /* synthetic */ StakingProgrammesPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2267x899d4c1(boolean z, StakingProgrammesPresenter stakingProgrammesPresenter, boolean z2, boolean z3) {
        super(1);
        this.$isReload$inlined = z;
        this.this$0 = stakingProgrammesPresenter;
        this.$isInitialLoad$inlined = z2;
        this.$isLoadMore$inlined = z3;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingProgrammes> result) {
        m1415invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1415invoke(Result<? extends StakingProgrammes> it) {
        RxEventBus rxEventBus;
        StakingTabType stakingTabType;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends StakingProgrammes> result = it;
        if (this.$isReload$inlined) {
            rxEventBus = this.this$0.rxEventBus;
            stakingTabType = this.this$0.stakingTabType;
            rxEventBus.publish(new DomainRxEvents.StakingTabRefreshStateChanged(stakingTabType, result instanceof Result.Loading));
        }
        if (result instanceof Result.Success) {
            StakingProgrammes stakingProgrammes = (StakingProgrammes) ((Result.Success) result).getData();
            this.this$0.onProgrammesDataObtained(stakingProgrammes.getProgrammes(), stakingProgrammes.getTotal(), this.$isLoadMore$inlined);
        } else if (result instanceof Result.Loading) {
            if (this.$isInitialLoad$inlined) {
                this.this$0.renderGlobalStateItemsList(GlobalState.Progress.INSTANCE);
            }
        } else if (result instanceof Result.Error) {
            if (this.$isLoadMore$inlined) {
                ((StakingProgrammesView) this.this$0.getViewState()).onLoadMoreError();
            } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                this.this$0.renderGlobalStateItemsList(GlobalState.NoInternet.INSTANCE);
            } else {
                this.this$0.renderGlobalStateItemsList(GlobalState.Unexpected.INSTANCE);
            }
        }
    }
}
