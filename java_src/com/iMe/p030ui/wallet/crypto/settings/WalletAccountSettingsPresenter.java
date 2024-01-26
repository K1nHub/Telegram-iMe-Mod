package com.iMe.p030ui.wallet.crypto.settings;

import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletAccountSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsPresenter */
/* loaded from: classes3.dex */
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
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.CryptoEvent, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
                m1646invoke(cryptoEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1646invoke(DomainRxEvents.CryptoEvent it) {
                CryptoAccessManager cryptoAccessManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = it;
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.AllWalletsReset.INSTANCE)) {
                    cryptoAccessManager = WalletAccountSettingsPresenter.this.cryptoAccessManager;
                    if (cryptoAccessManager.getAllWallets().isEmpty()) {
                        ((WalletAccountSettingsView) WalletAccountSettingsPresenter.this.getViewState()).removeSelfFromStackImmediately();
                    }
                } else if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE)) {
                    WalletAccountSettingsPresenter.this.renderSettingsItems();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$2
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
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
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
