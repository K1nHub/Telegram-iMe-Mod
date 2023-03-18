package com.smedialink.p031ui.wallet.crypto.create;

import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
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
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3286R;
import org.web3j.crypto.Keys;
import org.web3j.crypto.MnemonicUtils;
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
                Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2049x69d5d2cf(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2050x69d5d2d0((BaseView) getViewState())));
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
        if (r0 != null) {
            boolean z = r0.getPassword().length() > 0;
            if (r0.getAddress().length() > 0) {
                validateSeedInternal(this.walletInteractor.isValidRestoredAddress(seed, r0.getAddress(), this.cryptoPreferenceHelper.getCurrentBlockchainType()), seed, this.resourceManager.getString(C3286R.string.wallet_restore_address_eth_error), z);
            } else {
                validateSeedInternal(this.walletInteractor.isValidSeed(seed, this.cryptoPreferenceHelper.getCurrentBlockchainType()), seed, this.resourceManager.getString(C3286R.string.wallet_restore_eth_error), z);
            }
        }
    }

    public final void onCreateNewEmptyWalletClick() {
        String walletPassword = this.cryptoAccessManager.getWalletPassword();
        if (walletPassword.length() == 0) {
            ((CreateWalletView) getViewState()).createNewWallet();
            return;
        }
        Observable<Result<String>> observeOn = this.cryptoWalletInteractor.generateMnemonic(this.cryptoAccessManager.getLastLoggedInGuid(), walletPassword).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2047x1004bc19(this, walletPassword)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2048x1004bc1a((BaseView) getViewState())));
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

    private final void validateSeedInternal(Observable<Result<Boolean>> observable, String str, String str2, boolean z) {
        if (this.screenType instanceof CreateWalletFragment.ScreenType.Import) {
            Observable<Result<Boolean>> observeOn = observable.observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "validationObservable\n   …(schedulersProvider.ui())");
            Observable<R> flatMap = observeOn.flatMap(new C2055x9ee4cc57(new C2051x17c7d15b(z, this, str)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) flatMap, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2052xa2ffd3d8(this, z, str, str2)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2053xa2ffd3d9((BaseView) getViewState())));
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
