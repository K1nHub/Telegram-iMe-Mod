package com.iMe.p031ui.wallet.crypto.wallet_connect;

import com.iMe.mapper.wallet.wallet_connect.WCSessionStoreUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.Result;
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
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
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
        ((WalletConnectView) getViewState()).showChooseNetworkDialog(this.cryptoPreferenceHelper.getNetwork(), NetworksHelper.INSTANCE.getEVMNetworks(), new WalletConnectPresenter$startChooseNetworkDialog$1(this));
    }

    public final DialogModel getDisconnectAllConfirmationDialogModel() {
        return new DialogModel(LocaleController.getString("AreYouSureSessionsTitle", C3417R.string.AreYouSureSessionsTitle), this.resourceManager.getString(C3417R.string.wallet_connect_terminate_all_description), LocaleController.getString("Cancel", C3417R.string.Cancel), LocaleController.getString("Terminate", C3417R.string.Terminate));
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
        ((WalletConnectView) getViewState()).setupNetwork(this.cryptoPreferenceHelper.getNetwork());
        subscribeToEvents();
        subscribeToSessionList();
    }

    private final void subscribeToEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.NetworkUpdated.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2220x796451d4(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2221x796451d5(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void subscribeToSessionList() {
        Flowable<Result<List<WCSessionStoreItem>>> observeOn = this.walletConnectInteractor.getWalletConnectSavedSessions().distinctUntilChanged().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletConnectInteractor\n…(schedulersProvider.ui())");
        Disposable subscribeWithErrorHandle = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2222xd4a7409f(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2223xd4a740a0((BaseView) getViewState())));
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
