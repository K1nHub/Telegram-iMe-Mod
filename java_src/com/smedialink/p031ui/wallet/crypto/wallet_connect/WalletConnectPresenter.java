package com.smedialink.p031ui.wallet.crypto.wallet_connect;

import com.smedialink.mapper.wallet.wallet_connect.WCSessionStoreUiMappingKt;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.Hint;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.storage.HintsPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import timber.log.Timber;
/* compiled from: WalletConnectPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectPresenter */
/* loaded from: classes3.dex */
public final class WalletConnectPresenter extends BasePresenter<WalletConnectView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final WalletConnectInteractor walletConnectInteractor;
    private final WalletConnectManager walletConnectManager;

    public WalletConnectPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, HintsPreferenceHelper hintsPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, WalletConnectInteractor walletConnectInteractor, WalletConnectManager walletConnectManager) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(hintsPreferenceHelper, "hintsPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletConnectInteractor, "walletConnectInteractor");
        Intrinsics.checkNotNullParameter(walletConnectManager, "walletConnectManager");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.hintsPreferenceHelper = hintsPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.walletConnectInteractor = walletConnectInteractor;
        this.walletConnectManager = walletConnectManager;
    }

    public final void connect(String uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.walletConnectManager.connect(uri);
    }

    public final void disconnect(WalletConnectSessionItem sessionItem) {
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        this.walletConnectManager.disconnect(sessionItem.getSessionKey());
    }

    public final void disconnectAll() {
        this.walletConnectManager.disconnectAll();
    }

    public final void startChooseNetworkDialog() {
        ((WalletConnectView) getViewState()).showChooseNetworkDialog(this.cryptoPreferenceHelper.getNetworkType(), NetworkType.Companion.getEVMNetworks(), new WalletConnectPresenter$startChooseNetworkDialog$1(this));
    }

    public final DialogModel getDisconnectAllConfirmationDialogModel() {
        return new DialogModel(LocaleController.getString("AreYouSureSessionsTitle", C3158R.string.AreYouSureSessionsTitle), this.resourceManager.getString(C3158R.string.wallet_connect_terminate_all_description), LocaleController.getString("Cancel", C3158R.string.Cancel), LocaleController.getString("Terminate", C3158R.string.Terminate));
    }

    public final void showChangeNetworkHintIfNeeded() {
        HintsPreferenceHelper hintsPreferenceHelper = this.hintsPreferenceHelper;
        Hint.ChangeNetwork.WalletConnectScreen walletConnectScreen = Hint.ChangeNetwork.WalletConnectScreen.INSTANCE;
        if (hintsPreferenceHelper.shouldShowHint(walletConnectScreen)) {
            ((WalletConnectView) getViewState()).showChangeNetworkHint();
            this.hintsPreferenceHelper.onHintShowed(walletConnectScreen);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((WalletConnectView) getViewState()).setupNetworkType(this.cryptoPreferenceHelper.getNetworkType());
        subscribeToEvents();
        subscribeToSessionList();
    }

    private final void subscribeToEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.NetworkUpdated.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.NetworkUpdated networkUpdated = (DomainRxEvents.NetworkUpdated) it;
                cryptoPreferenceHelper = WalletConnectPresenter.this.cryptoPreferenceHelper;
                ((WalletConnectView) WalletConnectPresenter.this.getViewState()).setupNetworkType(cryptoPreferenceHelper.getNetworkType());
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$2
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
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void subscribeToSessionList() {
        Flowable<Result<List<WCSessionStoreItem>>> observeOn = this.walletConnectInteractor.getWalletConnectSavedSessions().distinctUntilChanged().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletConnectInteractor\n…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    WalletConnectPresenter.this.showSessions((List) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletConnectPresenter.this.resourceManager;
                    ((WalletConnectView) WalletConnectPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSessions(List<WCSessionStoreItem> list) {
        int collectionSizeOrDefault;
        List<WalletConnectSessionItem> mutableList;
        WalletConnectView walletConnectView = (WalletConnectView) getViewState();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WCSessionStoreItem wCSessionStoreItem : list) {
            arrayList.add(WCSessionStoreUiMappingKt.mapToUi(wCSessionStoreItem, this.resourceManager));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        walletConnectView.setupSessionsItems(mutableList);
    }
}
