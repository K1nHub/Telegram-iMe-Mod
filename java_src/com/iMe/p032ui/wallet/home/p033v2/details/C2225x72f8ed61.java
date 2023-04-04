package com.iMe.p032ui.wallet.home.p033v2.details;

import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2225x72f8ed61 extends Lambda implements Function1<DomainRxEvents.StakingProgrammesRefresh, Unit> {
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2225x72f8ed61(WalletTokenDetailsPresenter walletTokenDetailsPresenter) {
        super(1);
        this.this$0 = walletTokenDetailsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.StakingProgrammesRefresh stakingProgrammesRefresh) {
        m1449invoke(stakingProgrammesRefresh);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1449invoke(DomainRxEvents.StakingProgrammesRefresh it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this.this$0.loadStakingDetailedMetadata();
    }
}
