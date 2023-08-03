package com.iMe.p031ui.wallet.airdrop;

import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletAirdropPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter */
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
        return WalletHelper.isAuthorized();
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
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.CryptoEvent, Unit>() { // from class: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
                m1423invoke(cryptoEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1423invoke(DomainRxEvents.CryptoEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = it;
                if (cryptoEvent instanceof DomainRxEvents.WalletRestored ? true : cryptoEvent instanceof DomainRxEvents.WalletCreated) {
                    WalletAirdropPresenter.this.checkAirdropState();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        })), "viewState: BaseView? = n…Error.invoke()\n        })");
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
        Observable observeOn = AirdropInteractor.checkAirdropStart$default(this.airdropInteractor, str, null, 2, null).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "airdropInteractor\n      …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends AirdropInfo>, Unit>() { // from class: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AirdropInfo> result) {
                m1422invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1422invoke(Result<? extends AirdropInfo> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends AirdropInfo> result = it;
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
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void registerInAirdrop() {
        Observable registerInAirdrop$default = AirdropInteractor.registerInAirdrop$default(this.airdropInteractor, null, 1, null);
        final Function1<Result<? extends String>, ObservableSource<? extends Result<? extends AirdropInfo>>> function1 = new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends AirdropInfo>>>() { // from class: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends AirdropInfo>> invoke(Result<? extends String> result) {
                AirdropInteractor airdropInteractor;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                airdropInteractor = WalletAirdropPresenter.this.airdropInteractor;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                return AirdropInteractor.checkAirdropStart$default(airdropInteractor, data, null, 2, null);
            }
        };
        Observable flatMap = registerInAirdrop$default.flatMap(new Function(function1) { // from class: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function1, "function");
                this.function = function1;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "airdropInteractor\n      …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends AirdropInfo>, Unit>() { // from class: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AirdropInfo> result) {
                m1424invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1424invoke(Result<? extends AirdropInfo> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends AirdropInfo> result = it;
                if (result instanceof Result.Success) {
                    if (((AirdropInfo) ((Result.Success) result).getData()) instanceof AirdropInfo.Ready) {
                        ((WalletAirdropView) WalletAirdropPresenter.this.getViewState()).showAirdropDialog();
                    }
                } else if (result instanceof Result.Error) {
                    WalletAirdropPresenter.this.handleErrors(((Result.Error) result).getError());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.airdrop.WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
