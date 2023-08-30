package com.iMe.p031ui.wallet.crypto.wallet_connect;

import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.mapper.wallet.wallet_connect.WCSessionStoreUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.LocaleController;
import timber.log.Timber;
/* compiled from: WalletConnectPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectPresenter */
/* loaded from: classes4.dex */
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

    /* JADX INFO: Access modifiers changed from: private */
    public final Network getCurrentNetwork() {
        return this.cryptoPreferenceHelper.getNetwork();
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
        ((WalletConnectView) getViewState()).showChooseNetworkDialog(NetworkUiMappingKt.mapToUI(getCurrentNetwork()), NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getEVMNetworks()));
    }

    public final void onNetworkSelected(NetworkItem.Crypto crypto) {
        Network mapToDomain;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        if (crypto == null || (mapToDomain = NetworkUiMappingKt.mapToDomain(crypto)) == null) {
            return;
        }
        cryptoPreferenceHelper.setNetwork(mapToDomain);
        this.rxEventBus.publish(DomainRxEvents.NetworkUpdated.INSTANCE);
    }

    public final DialogModel getDisconnectAllConfirmationDialogModel() {
        return new DialogModel(LocaleController.getString("AreYouSureSessionsTitle", C3558R.string.AreYouSureSessionsTitle), this.resourceManager.getString(C3558R.string.wallet_connect_terminate_all_description), LocaleController.getString("Cancel", C3558R.string.Cancel), LocaleController.getString("Terminate", C3558R.string.Terminate));
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
        ((WalletConnectView) getViewState()).setupNetwork(NetworkUiMappingKt.mapToUI(getCurrentNetwork()));
        subscribeToEvents();
        subscribeToSessionList();
    }

    private final void subscribeToEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.NetworkUpdated.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.NetworkUpdated, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.NetworkUpdated networkUpdated) {
                m1480invoke(networkUpdated);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1480invoke(DomainRxEvents.NetworkUpdated it) {
                Network currentNetwork;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                currentNetwork = WalletConnectPresenter.this.getCurrentNetwork();
                ((WalletConnectView) WalletConnectPresenter.this.getViewState()).setupNetwork(NetworkUiMappingKt.mapToUI(currentNetwork));
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void subscribeToSessionList() {
        Flowable<Result<List<WCSessionStoreItem>>> observeOn = this.walletConnectInteractor.getWalletConnectSavedSessions().distinctUntilChanged().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletConnectInteractor\n…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribeWithErrorHandle = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends WCSessionStoreItem>>, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends WCSessionStoreItem>> result) {
                m1481invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1481invoke(Result<? extends List<? extends WCSessionStoreItem>> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends WCSessionStoreItem>> result = it;
                if (result instanceof Result.Success) {
                    WalletConnectPresenter.this.showSessions((List) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletConnectPresenter.this.resourceManager;
                    ((WalletConnectView) WalletConnectPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribeWithErrorHandle, "subscribeWithErrorHandle");
        BasePresenter.autoDispose$default(this, subscribeWithErrorHandle, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSessions(List<WCSessionStoreItem> list) {
        int collectionSizeOrDefault;
        List<WalletConnectSessionItem> mutableList;
        WalletConnectView walletConnectView = (WalletConnectView) getViewState();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WCSessionStoreItem wCSessionStoreItem : list) {
            arrayList.add(WCSessionStoreUiMappingKt.mapToUi(wCSessionStoreItem));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        walletConnectView.setupSessionsItems(mutableList);
    }
}
