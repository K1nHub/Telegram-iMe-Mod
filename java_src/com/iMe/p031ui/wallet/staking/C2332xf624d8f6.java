package com.iMe.p031ui.wallet.staking;

import com.iMe.p031ui.wallet.staking.StakingPresenter;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2332xf624d8f6 extends Lambda implements Function1<DomainRxEvents.StakingTabRefreshStateChanged, Unit> {
    final /* synthetic */ StakingPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2332xf624d8f6(StakingPresenter stakingPresenter) {
        super(1);
        this.this$0 = stakingPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.StakingTabRefreshStateChanged stakingTabRefreshStateChanged) {
        m1498invoke(stakingTabRefreshStateChanged);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1498invoke(DomainRxEvents.StakingTabRefreshStateChanged it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.StakingTabRefreshStateChanged stakingTabRefreshStateChanged = it;
        int i = StakingPresenter.WhenMappings.$EnumSwitchMapping$0[stakingTabRefreshStateChanged.getStakingTabType().ordinal()];
        if (i == 1) {
            this.this$0.isAllTabRefreshing = stakingTabRefreshStateChanged.isShowRefresh();
        } else if (i == 2) {
            this.this$0.isParticipatedTabRefreshing = stakingTabRefreshStateChanged.isShowRefresh();
        }
        this.this$0.updateRefreshState();
    }
}
