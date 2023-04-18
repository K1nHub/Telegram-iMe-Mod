package com.iMe.p031ui.wallet.common;

import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3242R;
/* compiled from: WalletRootPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.common.WalletRootPresenter */
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
        this.selectedTabId = C3242R.C3245id.wallet_root_bottom_navigation_home;
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
        selectTab(C3242R.C3245id.wallet_root_bottom_navigation_home);
    }

    private final boolean isDefaultTabSelected() {
        return this.selectedTabId == C3242R.C3245id.wallet_root_bottom_navigation_home;
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2073xb1f506fa(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2074xb1f506fb(null))), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateWalletConnectItemVisibility() {
        ((WalletRootView) getViewState()).showWalletConnectItem(isDefaultTabSelected() && this.cryptoPreferenceHelper.getCurrentBlockchainType() == BlockchainType.EVM && this.cryptoAccessManager.isCurrentBlockchainWalletCreated());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupNavigation() {
        HashMap<Integer, Boolean> hashMapOf;
        Integer valueOf = Integer.valueOf(C3242R.C3245id.wallet_root_bottom_navigation_home);
        Boolean bool = Boolean.TRUE;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m80to(valueOf, bool), TuplesKt.m80to(Integer.valueOf(C3242R.C3245id.wallet_root_bottom_navigation_exchange), Boolean.valueOf(this.cryptoAccessManager.isAnyWalletCreated())), TuplesKt.m80to(Integer.valueOf(C3242R.C3245id.wallet_root_bottom_navigation_settings), bool));
        ((WalletRootView) getViewState()).setupNavigationTabsEnabled(hashMapOf);
    }
}
