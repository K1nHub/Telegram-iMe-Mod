package com.smedialink.p031ui.wallet.crypto.create;

import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.crypto.CryptoWalletUtils;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import org.web3j.crypto.Keys;
import org.web3j.crypto.MnemonicUtils;
import timber.log.Timber;
/* compiled from: CreateWalletPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter */
/* loaded from: classes3.dex */
public final class CreateWalletPresenter extends BasePresenter<CreateWalletView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventsBus;
    private final SchedulersProvider schedulersProvider;
    private final CreateWalletFragment.ScreenType screenType;
    private final CryptoWalletInteractor walletInteractor;

    public CreateWalletPresenter(CreateWalletFragment.ScreenType screenType, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, RxEventBus rxEventsBus, SchedulersProvider schedulersProvider, CryptoWalletInteractor walletInteractor) {
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
    }

    public final void onSecretWordsCheckCompleted() {
        CreateWalletFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof CreateWalletFragment.ScreenType.WordsCheck) {
            if (((CreateWalletFragment.ScreenType.WordsCheck) screenType).getPassword().length() > 0) {
                Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.createWallet(((CreateWalletFragment.ScreenType.WordsCheck) this.screenType).getPassword(), this.cryptoAccessManager.isAnyWalletCreated() ? "" : ((CreateWalletFragment.ScreenType.WordsCheck) this.screenType).getPin(), "", StringExtKt.joinBySpace(((CreateWalletFragment.ScreenType.WordsCheck) this.screenType).getSecretWords()), this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo707ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
                T viewState = getViewState();
                Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
                final BaseView baseView = (BaseView) getViewState();
                Disposable subscribe = withLoadingDialog.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(T it) {
                        ResourceManager resourceManager;
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        Result result = (Result) it;
                        if (result instanceof Result.Success) {
                            CreateWalletPresenter.this.confirmBackUpCreated();
                        } else if (result instanceof Result.Error) {
                            ErrorModel error = ((Result.Error) result).getError();
                            resourceManager = CreateWalletPresenter.this.resourceManager;
                            ((CreateWalletView) CreateWalletPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                        }
                    }
                }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$2
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
                return;
            }
            confirmBackUpCreated();
        }
    }

    public final void validateSeed(String seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        CreateWalletFragment.ScreenType screenType = this.screenType;
        CreateWalletFragment.ScreenType.Import r0 = screenType instanceof CreateWalletFragment.ScreenType.Import ? (CreateWalletFragment.ScreenType.Import) screenType : null;
        if (r0 == null) {
            return;
        }
        boolean z = r0.getPassword().length() > 0;
        if (r0.getAddress().length() > 0) {
            validateSeedInternal(this.walletInteractor.isValidRestoredAddress(seed, r0.getAddress(), this.cryptoPreferenceHelper.getCurrentBlockchainType()), seed, this.resourceManager.getString(C3158R.string.wallet_restore_address_eth_error), z);
        } else {
            validateSeedInternal(this.walletInteractor.isValidSeed(seed, this.cryptoPreferenceHelper.getCurrentBlockchainType()), seed, this.resourceManager.getString(C3158R.string.wallet_restore_eth_error), z);
        }
    }

    public final void onCreateNewEmptyWalletClick() {
        final String walletPassword = this.cryptoAccessManager.getWalletPassword();
        if (walletPassword.length() == 0) {
            ((CreateWalletView) getViewState()).createNewWallet();
            return;
        }
        Observable<Result<String>> observeOn = this.cryptoWalletInteractor.generateMnemonic(this.cryptoAccessManager.getLastLoggedInGuid(), walletPassword).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((CreateWalletView) CreateWalletPresenter.this.getViewState()).createNewWalletWithPassword(StringExtKt.splitBySpace((String) ((Result.Success) result).getData()), walletPassword);
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = CreateWalletPresenter.this.resourceManager;
                    ((CreateWalletView) CreateWalletPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadCryptoData();
    }

    private final void loadCryptoData() {
        String checksumAddress;
        CreateWalletFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof CreateWalletFragment.ScreenType.SecretWords) {
            CreateWalletView createWalletView = (CreateWalletView) getViewState();
            if (((CreateWalletFragment.ScreenType.SecretWords) this.screenType).getAddress().length() > 0) {
                checksumAddress = ((CreateWalletFragment.ScreenType.SecretWords) this.screenType).getAddress();
            } else {
                checksumAddress = ((CreateWalletFragment.ScreenType.SecretWords) this.screenType).getSecretWords().isEmpty() ^ true ? Keys.toChecksumAddress(CryptoWalletUtils.INSTANCE.createBip44Wallet(StringExtKt.joinBySpace(((CreateWalletFragment.ScreenType.SecretWords) this.screenType).getSecretWords())).getAddress()) : "";
            }
            Intrinsics.checkNotNullExpressionValue(checksumAddress, "when {\n                 …ING\n                    }");
            createWalletView.setWalletAddress(checksumAddress);
            return;
        }
        if (screenType instanceof CreateWalletFragment.ScreenType.WordsCheck ? true : screenType instanceof CreateWalletFragment.ScreenType.Import) {
            List<String> words = MnemonicUtils.getWords();
            Intrinsics.checkNotNullExpressionValue(words, "getWords()");
            ((CreateWalletView) getViewState()).setHintWords(words);
        }
    }

    private final void validateSeedInternal(Observable<Result<Boolean>> observable, final String str, final String str2, final boolean z) {
        if (this.screenType instanceof CreateWalletFragment.ScreenType.Import) {
            Observable<Result<Boolean>> observeOn = observable.observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "validationObservable\n   …(schedulersProvider.ui())");
            Observable<R> flatMap = observeOn.flatMap(new Function() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                @Override // io.reactivex.functions.Function
                public final ObservableSource apply(Result result) {
                    CryptoWalletInteractor cryptoWalletInteractor;
                    CreateWalletFragment.ScreenType screenType;
                    CryptoPreferenceHelper cryptoPreferenceHelper;
                    SchedulersProvider schedulersProvider;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (!(result instanceof Result.Success)) {
                        return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                    } else if (z && Intrinsics.areEqual(result.getData(), Boolean.TRUE)) {
                        cryptoWalletInteractor = this.cryptoWalletInteractor;
                        screenType = this.screenType;
                        String password = ((CreateWalletFragment.ScreenType.Import) screenType).getPassword();
                        String str3 = str;
                        cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                        Observable<Result<Wallet>> createWallet = cryptoWalletInteractor.createWallet(password, "", "", str3, cryptoPreferenceHelper.getCurrentBlockchainType());
                        schedulersProvider = this.schedulersProvider;
                        Observable<Result<Wallet>> observeOn2 = createWallet.observeOn(schedulersProvider.mo707ui());
                        Intrinsics.checkNotNullExpressionValue(observeOn2, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
                        Observable<R> map = observeOn2.map(new Function() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$validateSeedInternal$lambda-4$$inlined$mapSuccess$1
                            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
                            @Override // io.reactivex.functions.Function
                            public final Object apply(Result result2) {
                                Intrinsics.checkNotNullParameter(result2, "result");
                                if (!(result2 instanceof Result.Success)) {
                                    if (result2 instanceof Result.Error) {
                                        return Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                    }
                                    if (result2 instanceof Object) {
                                        return result2;
                                    }
                                    return null;
                                }
                                return Result.Companion.success(Boolean.TRUE);
                            }
                        });
                        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                        return map;
                    } else {
                        Observable just = Observable.just(result);
                        Intrinsics.checkNotNullExpressionValue(just, "just(validationResult)");
                        return just;
                    }
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) flatMap, (BaseView) viewState, false, 2, (Object) null);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        T viewState2 = CreateWalletPresenter.this.getViewState();
                        Intrinsics.checkNotNullExpressionValue(viewState2, "viewState");
                        BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState2, false, false, null, 6, null);
                        if (((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                            if (z) {
                                ((CreateWalletView) CreateWalletPresenter.this.getViewState()).onSuccessConfirmBackUp();
                                return;
                            } else {
                                ((CreateWalletView) CreateWalletPresenter.this.getViewState()).onSuccessEnterSeed(str);
                                return;
                            }
                        }
                        ((CreateWalletView) CreateWalletPresenter.this.getViewState()).showToast(str2);
                    } else if (result instanceof Result.Error) {
                        T viewState3 = CreateWalletPresenter.this.getViewState();
                        Intrinsics.checkNotNullExpressionValue(viewState3, "viewState");
                        BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState3, false, false, null, 6, null);
                        ErrorModel error = ((Result.Error) result).getError();
                        resourceManager = CreateWalletPresenter.this.resourceManager;
                        ((CreateWalletView) CreateWalletPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$2
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void confirmBackUpCreated() {
        this.rxEventsBus.publish(DomainRxEvents.SuccessSaveBackup.INSTANCE);
        ((CreateWalletView) getViewState()).onSuccessConfirmBackUp();
    }
}
