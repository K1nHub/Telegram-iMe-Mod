package com.iMe.p032ui.wallet.staking.operations;

import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingOperationsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes4.dex */
public final class StakingOperationsPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<NetworkType, Unit> {
    final /* synthetic */ StakingOperationsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationsPresenter$startChooseNetworkDialog$1(StakingOperationsPresenter stakingOperationsPresenter) {
        super(1);
        this.this$0 = stakingOperationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NetworkType networkType) {
        invoke2(networkType);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NetworkType networkType) {
        RxEventBus rxEventBus;
        NetworkType networkType2;
        NetworkType networkType3;
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.this$0.selectedNetworkType = networkType;
        rxEventBus = this.this$0.rxEventBus;
        networkType2 = this.this$0.selectedNetworkType;
        rxEventBus.publish(new DomainRxEvents.StakingOperationsReload(networkType2));
        networkType3 = this.this$0.selectedNetworkType;
        ((StakingOperationsView) this.this$0.getViewState()).setupNetworkType(networkType3);
    }
}
