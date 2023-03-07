package com.smedialink.p031ui.wallet.airdrop;

import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletAirdropPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter */
/* loaded from: classes3.dex */
public final class WalletAirdropPresenter extends BasePresenter<WalletAirdropView> {
    private final AirdropInteractor airdropInteractor;
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper preferenceHelper;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;

    public WalletAirdropPresenter(AirdropInteractor airdropInteractor, RxEventBus rxEventBus, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper preferenceHelper, ResourceManager resourceManager, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(airdropInteractor, "airdropInteractor");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.airdropInteractor = airdropInteractor;
        this.rxEventBus = rxEventBus;
        this.cryptoAccessManager = cryptoAccessManager;
        this.preferenceHelper = preferenceHelper;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
    }

    public final boolean isBotActivated() {
        return WalletHelper.isWalletAuthorized();
    }

    public final boolean isCryptoWalletCreated() {
        return this.cryptoAccessManager.isCurrentBlockchainWalletCreated();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        checkAirdropState();
        listenEvents();
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = (DomainRxEvents.CryptoEvent) it;
                if (cryptoEvent instanceof DomainRxEvents.SuccessRestoreWallet ? true : cryptoEvent instanceof DomainRxEvents.SuccessCreateWallet) {
                    WalletAirdropPresenter.this.checkAirdropState();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
    public final void checkAirdropState() {
        WalletAirdropMetadata airdropMetadata = this.preferenceHelper.getAirdropMetadata();
        if (airdropMetadata.getAirdropStatus() == AirdropStatus.FINISHED || airdropMetadata.getAlertStatus().isRejected()) {
            return;
        }
        if (airdropMetadata.isRegistered()) {
            checkAirdropStart(airdropMetadata.getAirdropRequestId());
        } else {
            registerInAirdrop();
        }
    }

    private final void checkAirdropStart(String str) {
        Observable observeOn = AirdropInteractor.checkAirdropStart$default(this.airdropInteractor, str, null, 2, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "airdropInteractor\n      …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    if (((AirdropInfo) ((Result.Success) result).getData()) instanceof AirdropInfo.Ready) {
                        if (WalletAirdropPresenter.this.isCryptoWalletCreated() && WalletAirdropPresenter.this.isBotActivated()) {
                            ((WalletAirdropView) WalletAirdropPresenter.this.getViewState()).checkNeedToShowAirdropDialog();
                        } else {
                            ((WalletAirdropView) WalletAirdropPresenter.this.getViewState()).showAirdropDialog();
                        }
                    }
                } else if (result instanceof Result.Error) {
                    WalletAirdropPresenter.this.handleErrors(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$2
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

    private final void registerInAirdrop() {
        Observable flatMap = AirdropInteractor.registerInAirdrop$default(this.airdropInteractor, null, 1, null).flatMap(new Function() { // from class: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                AirdropInteractor airdropInteractor;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                airdropInteractor = WalletAirdropPresenter.this.airdropInteractor;
                String str = (String) result.getData();
                if (str == null) {
                    str = "";
                }
                return AirdropInteractor.checkAirdropStart$default(airdropInteractor, str, null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "airdropInteractor\n      …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    if (((AirdropInfo) ((Result.Success) result).getData()) instanceof AirdropInfo.Ready) {
                        ((WalletAirdropView) WalletAirdropPresenter.this.getViewState()).showAirdropDialog();
                    }
                } else if (result instanceof Result.Error) {
                    WalletAirdropPresenter.this.handleErrors(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.airdrop.WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$2
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
    public final void handleErrors(ErrorModel errorModel) {
        IErrorStatus status = errorModel.getStatus();
        boolean z = true;
        if (status != FirebaseFunctionsErrorHandler.AirdropErrorStatus.AIRDROP_NOT_ACTIVE && status != FirebaseFunctionsErrorHandler.AirdropErrorStatus.USER_ALREADY_PARTICIPATED) {
            z = false;
        }
        if (z) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.preferenceHelper;
            cryptoPreferenceHelper.setAirdropMetadata(WalletAirdropMetadata.copy$default(cryptoPreferenceHelper.getAirdropMetadata(), false, 0, null, AirdropStatus.FINISHED, null, 23, null));
            if (isBotActivated() || isCryptoWalletCreated()) {
                ((WalletAirdropView) getViewState()).showToast(errorModel.getMessage(this.resourceManager));
                return;
            }
            return;
        }
        ((WalletAirdropView) getViewState()).showToast(errorModel.getMessage(this.resourceManager));
    }
}
