package com.smedialink.p031ui.wallet.common;

import com.smedialink.common.AppRxEvents;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: WalletRootPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.common.WalletRootPresenter */
/* loaded from: classes3.dex */
public final class WalletRootPresenter extends BasePresenter<WalletRootView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final RxEventBus rxEventBus;
    private int selectedTabId;

    public WalletRootPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.rxEventBus = rxEventBus;
        this.selectedTabId = C3158R.C3161id.wallet_root_bottom_navigation_home;
    }

    public final void selectTab(int i) {
        this.selectedTabId = i;
        ((WalletRootView) getViewState()).onTabSelected(this.selectedTabId);
        ((WalletRootView) getViewState()).showNotificationItem(isDefaultTabSelected());
        updateWalletConnectItemVisibility();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        listenEvents();
        setupNavigation();
        selectTab(C3158R.C3161id.wallet_root_bottom_navigation_home);
    }

    private final boolean isDefaultTabSelected() {
        return this.selectedTabId == C3158R.C3161id.wallet_root_bottom_navigation_home;
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.common.WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = (RxEvent) it;
                if (rxEvent instanceof DomainRxEvents.SuccessCreateWallet ? true : rxEvent instanceof DomainRxEvents.SuccessRestoreWallet ? true : rxEvent instanceof DomainRxEvents.SuccessResetWallet ? true : rxEvent instanceof DomainRxEvents.SuccessSaveBackup) {
                    WalletRootPresenter.this.setupNavigation();
                    WalletRootPresenter.this.updateWalletConnectItemVisibility();
                } else if (rxEvent instanceof DomainRxEvents.NetworkUpdated) {
                    WalletRootPresenter.this.updateWalletConnectItemVisibility();
                } else if (rxEvent instanceof AppRxEvents.BinanceOpenAuthScreen) {
                    WalletRootPresenter.this.selectTab(C3158R.C3161id.wallet_root_bottom_navigation_home);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.common.WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        }), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateWalletConnectItemVisibility() {
        ((WalletRootView) getViewState()).showWalletConnectItem(isDefaultTabSelected() && this.cryptoPreferenceHelper.getCurrentBlockchainType() == BlockchainType.EVM && this.cryptoAccessManager.isCurrentBlockchainWalletCreated());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupNavigation() {
        HashMap<Integer, Boolean> hashMapOf;
        Integer valueOf = Integer.valueOf(C3158R.C3161id.wallet_root_bottom_navigation_home);
        Boolean bool = Boolean.TRUE;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(valueOf, bool), TuplesKt.m100to(Integer.valueOf(C3158R.C3161id.wallet_root_bottom_navigation_exchange), Boolean.valueOf(this.cryptoAccessManager.isAnyWalletCreated())), TuplesKt.m100to(Integer.valueOf(C3158R.C3161id.wallet_root_bottom_navigation_settings), bool));
        ((WalletRootView) getViewState()).setupNavigationTabsEnabled(hashMapOf);
    }
}
