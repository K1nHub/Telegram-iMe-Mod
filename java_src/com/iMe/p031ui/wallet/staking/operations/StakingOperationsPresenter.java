package com.iMe.p031ui.wallet.staking.operations;

import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import java.util.List;
import kotlin.collections.CollectionsKt;
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
        ((StakingOperationsView) getViewState()).showChooseNetworkDialog(this.selectedNetwork, NetworksHelper.INSTANCE.getEVMNetworks(), new StakingOperationsPresenter$startChooseNetworkDialog$1(this));
    }
}
