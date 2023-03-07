package com.smedialink.p031ui.wallet.crypto.enter.pin;

import android.os.Build;
import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.crypto.pin.PinCodeInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import javax.crypto.Cipher;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.controller.WalletFingerprintController;
import org.telegram.messenger.FingerprintController;
import timber.log.Timber;
/* compiled from: EnterWalletPinPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter */
/* loaded from: classes3.dex */
public final class EnterWalletPinPresenter extends BasePresenter<EnterWalletPinView> {
    private final PinCodeInteractor pinCodeInteractor;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final EnterPinCodeScreenType screenType;
    private final TelegramControllersGateway telegramControllersGateway;

    static {
        new Companion(null);
    }

    public final void setSuccessUnlock(boolean z) {
    }

    public EnterWalletPinPresenter(EnterPinCodeScreenType screenType, TelegramControllersGateway telegramControllersGateway, ResourceManager resourceManager, PinCodeInteractor pinCodeInteractor, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(pinCodeInteractor, "pinCodeInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.screenType = screenType;
        this.telegramControllersGateway = telegramControllersGateway;
        this.resourceManager = resourceManager;
        this.pinCodeInteractor = pinCodeInteractor;
        this.schedulersProvider = schedulersProvider;
    }

    public final void validatePin(final String pin) {
        Intrinsics.checkNotNullParameter(pin, "pin");
        if (isValidPinCode(pin)) {
            Observable observeOn = PinCodeInteractor.readPasswordByPinCode$default(this.pinCodeInteractor, pin, null, this.screenType == EnterPinCodeScreenType.TOTAL_LOCK, 2, null).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "pinCodeInteractor\n      …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog = RxExtKt.withLoadingDialog(observeOn, (BaseView) viewState, false);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        EnterWalletPinPresenter.this.setSuccessUnlock(true);
                        EnterWalletPinPresenter.this.savePinEncryptedIfNeeded(pin);
                        ((EnterWalletPinView) EnterWalletPinPresenter.this.getViewState()).onSuccessEnterPinCode(pin, (String) ((Result.Success) result).getData());
                    } else if (result instanceof Result.Error) {
                        EnterWalletPinView enterWalletPinView = (EnterWalletPinView) EnterWalletPinPresenter.this.getViewState();
                        Result.Error error = (Result.Error) result;
                        if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.CryptoErrorStatus.PIN_CODE_MAX_ATTEMPTS) {
                            enterWalletPinView.redirectScreenToPasswordEnter();
                        }
                        enterWalletPinView.onPinCodeErrorShake();
                        ErrorModel error2 = error.getError();
                        resourceManager = EnterWalletPinPresenter.this.resourceManager;
                        enterWalletPinView.showToast(error2.getMessage(resourceManager));
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2
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
    public final void savePinEncryptedIfNeeded(String str) {
        WalletFingerprintController walletFingerprintController$default = TelegramControllersGateway.DefaultImpls.getWalletFingerprintController$default(this.telegramControllersGateway, 0, 1, null);
        if (Build.VERSION.SDK_INT >= 23) {
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
    }

    public final void unlockWithFingerprint(Cipher cipher) {
        if (cipher == null) {
            validatePin("");
            return;
        }
        String decode = FingerprintController.decode(TelegramControllersGateway.DefaultImpls.getWalletFingerprintController$default(this.telegramControllersGateway, 0, 1, null).getWalletPinCodeEncrypted(), cipher);
        validatePin(decode != null ? decode : "");
    }

    private final boolean isValidPinCode(String str) {
        return str.length() == 4;
    }

    /* compiled from: EnterWalletPinPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
