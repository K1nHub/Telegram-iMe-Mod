package com.smedialink.p031ui.wallet.staking.operations;

import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: StakingOperationsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.staking.operations.StakingOperationsPresenter */
/* loaded from: classes3.dex */
public final class StakingOperationsPresenter extends BasePresenter<StakingOperationsView> {
    private final RxEventBus rxEventBus;
    private NetworkType selectedNetworkType;

    public StakingOperationsPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus) {
        NetworkType networkType;
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.rxEventBus = rxEventBus;
        if (cryptoPreferenceHelper.getNetworkType().isEVM()) {
            networkType = cryptoPreferenceHelper.getNetworkType();
        } else {
            networkType = (NetworkType) CollectionsKt.first((List<? extends Object>) NetworkType.Companion.getEVMNetworks());
        }
        this.selectedNetworkType = networkType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((StakingOperationsView) getViewState()).setupNetworkType(this.selectedNetworkType);
    }

    public final void setupNavigationRouter() {
        ((StakingOperationsView) getViewState()).onSetupNavigationRouter();
    }

    public final void selectTab(int i) {
        ((StakingOperationsView) getViewState()).onTabSelected(i);
    }

    public final void startChooseNetworkDialog() {
        ((StakingOperationsView) getViewState()).showChooseNetworkDialog(this.selectedNetworkType, NetworkType.Companion.getEVMNetworks(), new StakingOperationsPresenter$startChooseNetworkDialog$1(this));
    }
}
