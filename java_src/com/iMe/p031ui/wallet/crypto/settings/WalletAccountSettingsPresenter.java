package com.iMe.p031ui.wallet.crypto.settings;

import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletAccountSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsPresenter */
/* loaded from: classes4.dex */
public final class WalletAccountSettingsPresenter extends BasePresenter<WalletAccountSettingsView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final RxEventBus rxEventBus;

    public WalletAccountSettingsPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.rxEventBus = rxEventBus;
    }

    public final void resolveItemClick(WalletSettingsItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item instanceof WalletSettingsItem.CryptoAccount.Blockchains) {
            ((WalletAccountSettingsView) getViewState()).openBlockchainsScreen();
        } else if (item instanceof WalletSettingsItem.CryptoAccount.Privacy) {
            ((WalletAccountSettingsView) getViewState()).openPrivacySettingsScreen();
        } else if (item instanceof WalletSettingsItem.CryptoAccount.WalletConnect) {
            ((WalletAccountSettingsView) getViewState()).openWalletConnectScreen();
        } else if (item instanceof WalletSettingsItem.CryptoAccount.CustomTokens) {
            ((WalletAccountSettingsView) getViewState()).openCustomTokensScreen();
        } else if (item instanceof WalletSettingsItem.CryptoAccount.PinCode) {
            ((WalletAccountSettingsView) getViewState()).openPinCodeSettingsScreen();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToRxEvents();
        renderSettingsItems();
    }

    private final void subscribeToRxEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2172x57c2a9f4(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2173x57c2a9f5(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderSettingsItems() {
        WalletAccountSettingsView walletAccountSettingsView = (WalletAccountSettingsView) getViewState();
        WalletSettingsItem.CryptoAccount cryptoAccount = WalletSettingsItem.CryptoAccount.INSTANCE;
        BlockchainType currentBlockchainType = this.cryptoPreferenceHelper.getCurrentBlockchainType();
        BlockchainType blockchainType = BlockchainType.EVM;
        walletAccountSettingsView.renderSettingsItems(cryptoAccount.getItems(currentBlockchainType == blockchainType && this.cryptoAccessManager.isWalletCreated(blockchainType)));
    }
}
