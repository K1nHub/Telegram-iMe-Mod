package com.iMe.p031ui.wallet.crypto.enter.pin;

import com.iMe.fork.controller.WalletFingerprintController;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
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
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.FingerprintController;
import timber.log.Timber;
/* compiled from: EnterWalletPinPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter */
/* loaded from: classes6.dex */
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

    public final void validatePin(final String pin, final boolean z) {
        Intrinsics.checkNotNullParameter(pin, "pin");
        if (isValidPinCode(pin)) {
            Observable<Result<String>> observeOn = this.pinCodeInteractor.readPasswordByPinCode(pin, this.screenType.isTotalLock()).observeOn(this.schedulersProvider.mo716ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "pinCodeInteractor\n      …(schedulersProvider.ui())");
            Observable withLoadingUpdate = RxExtKt.withLoadingUpdate(observeOn, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    EnterWalletPinPresenter.validatePin$lambda$0(EnterWalletPinPresenter.this, z, (Boolean) obj);
                }
            });
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingUpdate.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                    m1448invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1448invoke(Result<? extends String> it) {
                    CryptoPreferenceHelper cryptoPreferenceHelper;
                    ResourceManager resourceManager;
                    CryptoPreferenceHelper cryptoPreferenceHelper2;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends String> result = it;
                    if (result instanceof Result.Success) {
                        EnterWalletPinPresenter.this.savePinEncryptedIfNeeded(pin);
                        cryptoPreferenceHelper2 = EnterWalletPinPresenter.this.cryptoPreferenceHelper;
                        cryptoPreferenceHelper2.setWalletPinCodeBadTriesCount(0);
                        ((EnterWalletPinView) EnterWalletPinPresenter.this.getViewState()).onSuccessEnterPinCode(pin, (String) ((Result.Success) result).getData());
                    } else if (result instanceof Result.Error) {
                        cryptoPreferenceHelper = EnterWalletPinPresenter.this.cryptoPreferenceHelper;
                        if (cryptoPreferenceHelper.isLocalEncryptionCompleted()) {
                            EnterWalletPinPresenter.this.onPinCodeError();
                            return;
                        }
                        EnterWalletPinView enterWalletPinView = (EnterWalletPinView) EnterWalletPinPresenter.this.getViewState();
                        Result.Error error = (Result.Error) result;
                        if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.CryptoErrorStatus.PIN_CODE_MAX_ATTEMPTS) {
                            enterWalletPinView.openPasswordEnterScreen();
                        }
                        enterWalletPinView.onPinCodeErrorShake();
                        resourceManager = EnterWalletPinPresenter.this.resourceManager;
                        enterWalletPinView.showErrorToast(error, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable error) {
                    Timber.m6e(error);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 != null) {
                        String message = error.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView2.showToast(message);
                    }
                    Intrinsics.checkNotNullExpressionValue(error, "error");
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
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
            ((EnterWalletPinView) getViewState()).showDeleteWalletDialog(new DialogModel(this.resourceManager.getString(C3473R.string.wallet_enter_eth_password_delete_wallet_dialog_title), this.resourceManager.getString(C3473R.string.wallet_enter_eth_password_delete_wallet_dialog_description), this.resourceManager.getString(C3473R.string.common_cancel), this.resourceManager.getString(C3473R.string.wallet_enter_eth_password_delete_wallet_dialog_submit_btn)));
        }
    }

    public final void deleteWallets() {
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.deleteAllWallets().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1447invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1447invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    ((EnterWalletPinView) EnterWalletPinPresenter.this.getViewState()).onDeleteWalletSuccess();
                } else if (result instanceof Result.Error) {
                    resourceManager = EnterWalletPinPresenter.this.resourceManager;
                    ((EnterWalletPinView) EnterWalletPinPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
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
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
