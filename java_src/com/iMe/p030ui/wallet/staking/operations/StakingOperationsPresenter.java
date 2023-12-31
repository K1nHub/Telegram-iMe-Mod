package com.iMe.p030ui.wallet.staking.operations;

import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
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
    private NetworkItem.Crypto selectedNetworkItem;

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
        this.selectedNetworkItem = NetworkUiMappingKt.mapToUI(network);
    }

    public final void setupNavigationRouter() {
        ((StakingOperationsView) getViewState()).onSetupNavigationRouter();
    }

    public final void selectTab(int i) {
        ((StakingOperationsView) getViewState()).onTabSelected(i);
    }

    public final void startChooseNetworkDialog() {
        ((StakingOperationsView) getViewState()).showChooseNetworkDialog(this.selectedNetworkItem, NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getEVMNetworks()));
    }

    public final void onNetworkSelected(NetworkItem.Crypto crypto) {
        if (crypto == null) {
            return;
        }
        this.selectedNetworkItem = crypto;
        this.rxEventBus.publish(new DomainRxEvents.StakingOperationsReload(crypto.getNetworkId()));
        ((StakingOperationsView) getViewState()).setupNetwork(this.selectedNetworkItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((StakingOperationsView) getViewState()).setupNetwork(this.selectedNetworkItem);
    }
}
