package com.iMe.p031ui.wallet.staking.operations;

import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingOperationsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes4.dex */
public final class StakingOperationsPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<Network, Unit> {
    final /* synthetic */ StakingOperationsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationsPresenter$startChooseNetworkDialog$1(StakingOperationsPresenter stakingOperationsPresenter) {
        super(1);
        this.this$0 = stakingOperationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Network network) {
        invoke2(network);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Network networkType) {
        RxEventBus rxEventBus;
        Network network;
        Network network2;
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.this$0.selectedNetwork = networkType;
        rxEventBus = this.this$0.rxEventBus;
        network = this.this$0.selectedNetwork;
        rxEventBus.publish(new DomainRxEvents.StakingOperationsReload(network.getId()));
        network2 = this.this$0.selectedNetwork;
        ((StakingOperationsView) this.this$0.getViewState()).setupNetwork(network2);
    }
}
