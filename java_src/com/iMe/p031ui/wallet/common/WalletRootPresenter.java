package com.iMe.p031ui.wallet.common;

import com.iMe.common.AppRxEvents;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3473R;
import timber.log.Timber;
/* compiled from: WalletRootPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.common.WalletRootPresenter */
/* loaded from: classes6.dex */
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
        this.selectedTabId = C3473R.C3476id.wallet_root_bottom_navigation_home;
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
        selectTab(C3473R.C3476id.wallet_root_bottom_navigation_home);
    }

    private final boolean isDefaultTabSelected() {
        return this.selectedTabId == C3473R.C3476id.wallet_root_bottom_navigation_home;
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.common.WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1424invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1424invoke(RxEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (Intrinsics.areEqual(rxEvent, DomainRxEvents.AllWalletsReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletRestored.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.SuccessSaveBackup.INSTANCE)) {
                    WalletRootPresenter.this.updateWalletConnectItemVisibility();
                    return;
                }
                if (Intrinsics.areEqual(rxEvent, AppRxEvents.BinanceOpenAuthScreen.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.SelectWalletCryptoTab.INSTANCE)) {
                    WalletRootPresenter.this.selectTab(C3473R.C3476id.wallet_root_bottom_navigation_home);
                } else if (Intrinsics.areEqual(rxEvent, DomainRxEvents.NetworkUpdated.INSTANCE)) {
                    WalletRootPresenter.this.updateWalletConnectItemVisibility();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.common.WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateWalletConnectItemVisibility() {
        ((WalletRootView) getViewState()).showWalletConnectItem(isDefaultTabSelected() && this.cryptoPreferenceHelper.getCurrentBlockchainType() == BlockchainType.EVM && this.cryptoAccessManager.isCurrentBlockchainWalletCreated());
    }
}
