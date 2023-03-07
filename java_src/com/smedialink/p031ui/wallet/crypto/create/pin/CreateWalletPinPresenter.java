package com.smedialink.p031ui.wallet.crypto.create.pin;

import android.os.Build;
import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.model.common.ScreenStep;
import com.smedialink.model.wallet.pin.WalletPinScreenArgs;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.controller.WalletFingerprintController;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.FingerprintController;
import timber.log.Timber;
/* compiled from: CreateWalletPinPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinPresenter */
/* loaded from: classes3.dex */
public final class CreateWalletPinPresenter extends BasePresenter<CreateWalletPinView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private ScreenStep currentScreenStep;
    private String guid;
    private String password;
    private String pin;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private String seed;
    private final TelegramControllersGateway telegramControllersGateway;

    /* compiled from: CreateWalletPinPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ScreenStep.values().length];
            iArr[ScreenStep.FIRST_STEP.ordinal()] = 1;
            iArr[ScreenStep.CONFIRM_STEP.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public CreateWalletPinPresenter(WalletPinScreenArgs walletPinScreenArgs, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway) {
        Intrinsics.checkNotNullParameter(walletPinScreenArgs, "walletPinScreenArgs");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramControllersGateway = telegramControllersGateway;
        this.currentScreenStep = ScreenStep.FIRST_STEP;
        this.pin = "";
        this.password = walletPinScreenArgs.getPassword();
        this.guid = walletPinScreenArgs.getGuid();
        this.seed = walletPinScreenArgs.getSeed();
    }

    public final void setCurrentScreenStep(ScreenStep screenStep) {
        Intrinsics.checkNotNullParameter(screenStep, "<set-?>");
        this.currentScreenStep = screenStep;
    }

    public final void validatePin(String confirmPinCode) {
        Intrinsics.checkNotNullParameter(confirmPinCode, "confirmPinCode");
        if (Intrinsics.areEqual(this.pin, confirmPinCode)) {
            if (!(this.guid.length() > 0)) {
                if (!(this.seed.length() > 0)) {
                    Observable<Result<String>> observeOn = this.cryptoWalletInteractor.generateMnemonic(this.guid, this.password).observeOn(this.schedulersProvider.mo707ui());
                    Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
                    T viewState = getViewState();
                    Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                    Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3
                        @Override // io.reactivex.functions.Consumer
                        public final void accept(T it) {
                            ResourceManager resourceManager;
                            String str;
                            String str2;
                            Intrinsics.checkNotNullExpressionValue(it, "it");
                            Result result = (Result) it;
                            if (result instanceof Result.Success) {
                                str = CreateWalletPinPresenter.this.password;
                                str2 = CreateWalletPinPresenter.this.pin;
                                ((CreateWalletPinView) CreateWalletPinPresenter.this.getViewState()).goToBackUpTutorial(str, str2, (String) ((Result.Success) result).getData());
                            } else if (result instanceof Result.Error) {
                                CreateWalletPinPresenter createWalletPinPresenter = CreateWalletPinPresenter.this;
                                ErrorModel error = ((Result.Error) result).getError();
                                resourceManager = CreateWalletPinPresenter.this.resourceManager;
                                createWalletPinPresenter.onPinError(error.getMessage(resourceManager));
                            }
                        }
                    }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$4
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
                    return;
                }
            }
            Observable<Result<Wallet>> observeOn2 = this.cryptoWalletInteractor.createWallet(this.password, this.pin, this.guid, this.seed, this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn2, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
            T viewState2 = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState2, "viewState");
            Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn2, (BaseView) viewState2, false);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe2 = withLoadingDialog.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        CreateWalletPinPresenter.this.savePinEncrypted();
                        ((CreateWalletPinView) CreateWalletPinPresenter.this.getViewState()).onSuccessCreateWallet();
                    } else if (result instanceof Result.Error) {
                        CreateWalletPinPresenter createWalletPinPresenter = CreateWalletPinPresenter.this;
                        ErrorModel error = ((Result.Error) result).getError();
                        resourceManager = CreateWalletPinPresenter.this.resourceManager;
                        createWalletPinPresenter.onPinError(error.getMessage(resourceManager));
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2
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
            Intrinsics.checkNotNullExpressionValue(subscribe2, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe2, null, 1, null);
            return;
        }
        onPinError(this.resourceManager.getString(C3158R.string.wallet_confirm_eth_pin_code_validation_not_match_error));
    }

    public final void onPinChanged(String pinCode) {
        Intrinsics.checkNotNullParameter(pinCode, "pinCode");
        if (isValidPin(pinCode)) {
            int i = WhenMappings.$EnumSwitchMapping$0[this.currentScreenStep.ordinal()];
            if (i == 1) {
                this.pin = pinCode;
            } else if (i != 2) {
            } else {
                validatePin(pinCode);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void savePinEncrypted() {
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        FingerprintController.createCipher();
        WalletFingerprintController walletFingerprintController$default = TelegramControllersGateway.DefaultImpls.getWalletFingerprintController$default(this.telegramControllersGateway, 0, 1, null);
        String encode = FingerprintController.encode(this.pin);
        if (encode == null) {
            encode = "";
        }
        walletFingerprintController$default.setWalletPinCodeEncrypted(encode);
        walletFingerprintController$default.saveConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPinError(String str) {
        CreateWalletPinView createWalletPinView = (CreateWalletPinView) getViewState();
        createWalletPinView.showToast(str);
        createWalletPinView.onCodeErrorShake();
    }

    private final boolean isValidPin(String str) {
        return str.length() == 4;
    }

    /* compiled from: CreateWalletPinPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
