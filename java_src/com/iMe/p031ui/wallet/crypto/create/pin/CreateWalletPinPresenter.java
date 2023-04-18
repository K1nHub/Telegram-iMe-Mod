package com.iMe.p031ui.wallet.crypto.create.pin;

import com.iMe.fork.controller.WalletFingerprintController;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.model.common.ScreenStep;
import com.iMe.model.wallet.pin.WalletPinScreenArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.FingerprintController;
/* compiled from: CreateWalletPinPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter */
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
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ScreenStep.values().length];
            try {
                iArr[ScreenStep.FIRST_STEP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScreenStep.CONFIRM_STEP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
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

    private final void validatePin(String str) {
        if (Intrinsics.areEqual(this.pin, str)) {
            Observable<Result<Wallet>> observeOn = getCreateWalletObservable().observeOn(this.schedulersProvider.mo693ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "getCreateWalletObservabl…(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2115xe4b01fa6(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2116xe4b01fa7((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
            return;
        }
        onPinError(this.resourceManager.getString(C3242R.string.wallet_confirm_eth_pin_code_validation_not_match_error));
    }

    private final Observable<Result<Wallet>> getCreateWalletObservable() {
        BlockchainType currentBlockchainType = this.cryptoPreferenceHelper.getCurrentBlockchainType();
        if (this.guid.length() > 0) {
            return this.cryptoWalletInteractor.recreateWallet(this.password, this.pin, currentBlockchainType);
        }
        return this.seed.length() > 0 ? this.cryptoWalletInteractor.importWallet(this.seed, this.password, this.pin, currentBlockchainType) : this.cryptoWalletInteractor.createLocalWallet(currentBlockchainType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void savePinEncrypted() {
        FingerprintController.createCipher();
        WalletFingerprintController walletFingerprintController$default = TelegramControllersGateway.CC.getWalletFingerprintController$default(this.telegramControllersGateway, 0, 1, null);
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
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
