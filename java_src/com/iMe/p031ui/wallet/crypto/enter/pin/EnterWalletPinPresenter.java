package com.iMe.p031ui.wallet.crypto.enter.pin;

import com.iMe.fork.controller.WalletFingerprintController;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import javax.crypto.Cipher;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.FingerprintController;
/* compiled from: EnterWalletPinPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter */
/* loaded from: classes4.dex */
public final class EnterWalletPinPresenter extends BasePresenter<EnterWalletPinView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final PinCodeInteractor pinCodeInteractor;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final EnterPinCodeScreenType screenType;
    private final TelegramControllersGateway telegramControllersGateway;

    static {
        new Companion(null);
    }

    public EnterWalletPinPresenter(EnterPinCodeScreenType screenType, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, PinCodeInteractor pinCodeInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(pinCodeInteractor, "pinCodeInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        this.screenType = screenType;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.pinCodeInteractor = pinCodeInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramControllersGateway = telegramControllersGateway;
    }

    public final void validatePin(String pin, final boolean z) {
        Intrinsics.checkNotNullParameter(pin, "pin");
        if (isValidPinCode(pin)) {
            Observable<Result<String>> observeOn = this.pinCodeInteractor.readPasswordByPinCode(pin, this.screenType.isTotalLock()).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "pinCodeInteractor\n      …(schedulersProvider.ui())");
            Disposable subscribe = RxExtKt.withLoadingUpdate(observeOn, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    EnterWalletPinPresenter.validatePin$lambda$0(EnterWalletPinPresenter.this, z, (Boolean) obj);
                }
            }).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2169x3ca87642(this, pin)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2170x3ca87643((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void validatePin$lambda$0(EnterWalletPinPresenter this$0, boolean z, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        ((EnterWalletPinView) this$0.getViewState()).updateLoadingState(it.booleanValue(), z);
    }

    public final void onForgotPinClick() {
        if (this.cryptoPreferenceHelper.isLocalEncryptionCompleted()) {
            ((EnterWalletPinView) getViewState()).showForgotPasswordOptionsDialog();
        } else {
            ((EnterWalletPinView) getViewState()).openPasswordEnterScreen();
        }
    }

    public final void onForgotPasscodeOptionSelected(int i) {
        if (i == 0) {
            ((EnterWalletPinView) getViewState()).openRestoreWalletScreen(this.cryptoAccessManager.getLastLoggedInAddress(this.cryptoPreferenceHelper.getCurrentBlockchainType()));
        } else if (i != 1) {
        } else {
            ((EnterWalletPinView) getViewState()).showDeleteWalletDialog(new DialogModel(this.resourceManager.getString(C3417R.string.wallet_enter_eth_password_delete_wallet_dialog_title), this.resourceManager.getString(C3417R.string.wallet_enter_eth_password_delete_wallet_dialog_description), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.wallet_enter_eth_password_delete_wallet_dialog_submit_btn)));
        }
    }

    public final void deleteWallets() {
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.deleteAllWallets().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2167x8ea63d12(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2168x8ea63d13((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void unlockWithFingerprint(Cipher cipher) {
        if (cipher == null) {
            validatePin("", true);
            return;
        }
        String decode = FingerprintController.decode(TelegramControllersGateway.CC.getWalletFingerprintController$default(this.telegramControllersGateway, 0, 1, null).getWalletPinCodeEncrypted(), cipher);
        validatePin(decode != null ? decode : "", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPinCodeError() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        int walletPinCodeBadTriesCount = cryptoPreferenceHelper.getWalletPinCodeBadTriesCount();
        cryptoPreferenceHelper.setWalletPinCodeBadTriesCount(walletPinCodeBadTriesCount + 1);
        this.cryptoPreferenceHelper.setWalletPinCodeTimeoutUntil(DateExtKt.now() + (TimeUnit.SECONDS.toMillis(5L) * (walletPinCodeBadTriesCount < 3 ? 0 : walletPinCodeBadTriesCount > 7 ? 6 : (walletPinCodeBadTriesCount - 3) + 1)));
        ((EnterWalletPinView) getViewState()).onPinCodeErrorShake();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void savePinEncryptedIfNeeded(String str) {
        WalletFingerprintController walletFingerprintController$default = TelegramControllersGateway.CC.getWalletFingerprintController$default(this.telegramControllersGateway, 0, 1, null);
        if (walletFingerprintController$default.getWalletPinCodeEncrypted().length() > 0) {
            return;
        }
        FingerprintController.createCipher();
        String encode = FingerprintController.encode(str);
        if (encode == null) {
            encode = "";
        }
        walletFingerprintController$default.setWalletPinCodeEncrypted(encode);
        walletFingerprintController$default.saveConfig();
    }

    private final boolean isValidPinCode(String str) {
        return str.length() == 4;
    }

    /* compiled from: EnterWalletPinPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
