package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3295R;
/* compiled from: CreateWalletPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter */
/* loaded from: classes3.dex */
public final class CreateWalletPresenter extends BasePresenter<CreateWalletView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private String lastSearchQuery;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventsBus;
    private final SchedulersProvider schedulersProvider;
    private final CreateWalletScreenType screenType;
    private final PublishSubject<String> searchQuerySubject;
    private final CryptoWalletInteractor walletInteractor;

    public CreateWalletPresenter(CreateWalletScreenType screenType, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, RxEventBus rxEventsBus, SchedulersProvider schedulersProvider, CryptoWalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventsBus, "rxEventsBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.screenType = screenType;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.rxEventsBus = rxEventsBus;
        this.schedulersProvider = schedulersProvider;
        this.walletInteractor = walletInteractor;
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.searchQuerySubject = create;
        this.lastSearchQuery = "";
    }

    public final void onSecretWordsCheckCompleted() {
        CreateWalletScreenType createWalletScreenType = this.screenType;
        if (createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) {
            if (((CreateWalletScreenType.WordsCheck) createWalletScreenType).getPassword().length() > 0) {
                Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.importWallet(StringExtKt.joinBySpace(((CreateWalletScreenType.WordsCheck) this.screenType).getSecretWords()), ((CreateWalletScreenType.WordsCheck) this.screenType).getPassword(), this.cryptoAccessManager.isAnyWalletCreated() ? "" : ((CreateWalletScreenType.WordsCheck) this.screenType).getPin(), this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
                T viewState = getViewState();
                Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2148x69d5d2cf(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2149x69d5d2d0((BaseView) getViewState())));
                Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
                BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
                return;
            }
            confirmBackUpCreated();
        }
    }

    public final void validateSeed(String seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        CreateWalletScreenType createWalletScreenType = this.screenType;
        CreateWalletScreenType.Import r0 = createWalletScreenType instanceof CreateWalletScreenType.Import ? (CreateWalletScreenType.Import) createWalletScreenType : null;
        if (r0 != null) {
            boolean z = r0.getPassword().length() > 0;
            if (r0.getAddress().length() > 0) {
                validateSeedInternal(this.walletInteractor.isValidRestoredAddress(seed, r0.getAddress(), this.cryptoPreferenceHelper.getCurrentBlockchainType()), seed, this.resourceManager.getString(C3295R.string.wallet_restore_address_eth_error), z);
            } else {
                validateSeedInternal(this.walletInteractor.isValidSeed(seed, this.cryptoPreferenceHelper.getCurrentBlockchainType()), seed, this.resourceManager.getString(C3295R.string.wallet_restore_eth_error), z);
            }
        }
    }

    public final void onCreateNewEmptyWalletClick() {
        String walletPassword = this.cryptoAccessManager.getWalletPassword();
        if (walletPassword.length() == 0) {
            ((CreateWalletView) getViewState()).createNewWallet();
            return;
        }
        Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.createLocalWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2146x1004bc19(this, walletPassword)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2147x1004bc1a((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchMnemonicWordsSuggestions(String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        this.lastSearchQuery = query;
        this.searchQuerySubject.onNext(query);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        setupScreen();
        subscribeToQueryChanges();
    }

    private final void subscribeToQueryChanges() {
        Observable<String> subscribeOn = this.searchQuerySubject.debounce(200L, TimeUnit.MILLISECONDS).distinctUntilChanged().subscribeOn(this.schedulersProvider.mo699io());
        final CreateWalletPresenter$subscribeToQueryChanges$1 createWalletPresenter$subscribeToQueryChanges$1 = new CreateWalletPresenter$subscribeToQueryChanges$1(this);
        Observable observeOn = subscribeOn.switchMap(new Function() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$3;
                subscribeToQueryChanges$lambda$3 = CreateWalletPresenter.subscribeToQueryChanges$lambda$3(Function1.this, obj);
                return subscribeToQueryChanges$lambda$3;
            }
        }).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2150x40636172(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2151x40636173(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToQueryChanges$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    private final void setupScreen() {
        if (this.screenType instanceof CreateWalletScreenType.SecretWords) {
            ((CreateWalletView) getViewState()).setWalletAddress(((CreateWalletScreenType.SecretWords) this.screenType).getAddress());
        }
    }

    private final void validateSeedInternal(Observable<Result<Boolean>> observable, String str, String str2, boolean z) {
        if (this.screenType instanceof CreateWalletScreenType.Import) {
            Observable<Result<Boolean>> observeOn = observable.observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "validationObservable\n   …(schedulersProvider.ui())");
            Observable<R> flatMap = observeOn.flatMap(new C2156x9ee4cc57(new C2152x17c7d15b(z, this, str)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) flatMap, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2153xa2ffd3d8(this, z, str, str2)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2154xa2ffd3d9((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void confirmBackUpCreated() {
        this.rxEventsBus.publish(DomainRxEvents.SuccessSaveBackup.INSTANCE);
        ((CreateWalletView) getViewState()).onSuccessConfirmBackUp();
    }
}
