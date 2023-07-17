package com.iMe.p031ui.wallet.staking.programmes;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2396xee2d436d extends Lambda implements Function1<DomainRxEvents.StakingProgrammesRefresh, Unit> {
    final /* synthetic */ StakingProgrammesPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2396xee2d436d(StakingProgrammesPresenter stakingProgrammesPresenter) {
        super(1);
        this.this$0 = stakingProgrammesPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.StakingProgrammesRefresh stakingProgrammesRefresh) {
        m1530invoke(stakingProgrammesRefresh);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1530invoke(DomainRxEvents.StakingProgrammesRefresh it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        StakingProgrammesPresenter.reload$default(this.this$0, false, 1, null);
    }
}
