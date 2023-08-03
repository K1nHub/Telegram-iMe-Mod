package com.iMe.p031ui.wallet.staking.operations;

import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: StakingOperationsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsPresenter */
/* loaded from: classes4.dex */
public final class StakingOperationsPresenter extends BasePresenter<StakingOperationsView> {
    private final RxEventBus rxEventBus;
    private Network selectedNetwork;

    public StakingOperationsPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus) {
        Network network;
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.rxEventBus = rxEventBus;
        if (cryptoPreferenceHelper.getNetwork().getBlockchainType() == BlockchainType.EVM) {
            network = cryptoPreferenceHelper.getNetwork();
        } else {
            network = (Network) CollectionsKt.first((List<? extends Object>) NetworksHelper.INSTANCE.getEVMNetworks());
        }
        this.selectedNetwork = network;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((StakingOperationsView) getViewState()).setupNetwork(this.selectedNetwork);
    }

    public final void setupNavigationRouter() {
        ((StakingOperationsView) getViewState()).onSetupNavigationRouter();
    }

    public final void selectTab(int i) {
        ((StakingOperationsView) getViewState()).onTabSelected(i);
    }

    public final void startChooseNetworkDialog() {
        ((StakingOperationsView) getViewState()).showChooseNetworkDialog(this.selectedNetwork, NetworksHelper.INSTANCE.getEVMNetworks(), new Function1<Network, Unit>() { // from class: com.iMe.ui.wallet.staking.operations.StakingOperationsPresenter$startChooseNetworkDialog$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
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
                StakingOperationsPresenter.this.selectedNetwork = networkType;
                rxEventBus = StakingOperationsPresenter.this.rxEventBus;
                network = StakingOperationsPresenter.this.selectedNetwork;
                rxEventBus.publish(new DomainRxEvents.StakingOperationsReload(network.getId()));
                network2 = StakingOperationsPresenter.this.selectedNetwork;
                ((StakingOperationsView) StakingOperationsPresenter.this.getViewState()).setupNetwork(network2);
            }
        });
    }
}
