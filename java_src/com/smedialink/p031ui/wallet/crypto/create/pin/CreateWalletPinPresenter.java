package com.smedialink.p031ui.wallet.crypto.create.pin;

import android.os.Build;
import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.model.common.ScreenStep;
import com.smedialink.model.wallet.pin.WalletPinScreenArgs;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.controller.WalletFingerprintController;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.FingerprintController;
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

    public final void validatePin(String confirmPinCode) {
        Intrinsics.checkNotNullParameter(confirmPinCode, "confirmPinCode");
        if (!Intrinsics.areEqual(this.pin, confirmPinCode)) {
            onPinError(this.resourceManager.getString(C3301R.string.wallet_confirm_eth_pin_code_validation_not_match_error));
            return;
        }
        if (!(this.guid.length() > 0)) {
            if (!(this.seed.length() > 0)) {
                Observable<Result<String>> observeOn = this.cryptoWalletInteractor.generateMnemonic(this.guid, this.password).observeOn(this.schedulersProvider.mo706ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
                T viewState = getViewState();
                Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2074xe4b01fa8(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2075xe4b01fa9(null)));
                Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
                BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
                return;
            }
        }
        Observable<Result<Wallet>> observeOn2 = this.cryptoWalletInteractor.createWallet(this.password, this.pin, this.guid, this.seed, this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn2, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState2 = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState2, "viewState");
        Disposable subscribe2 = RxExtKt.withLoadingDialog((Observable) observeOn2, (BaseView) viewState2, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2072xe4b01fa6(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2073xe4b01fa7((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe2, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe2, null, 1, null);
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
