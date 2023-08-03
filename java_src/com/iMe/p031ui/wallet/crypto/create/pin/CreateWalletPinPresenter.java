package com.iMe.p031ui.wallet.crypto.create.pin;

import com.iMe.fork.controller.WalletFingerprintController;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.model.common.ScreenStep;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.pin.CreatePinCodeScreenType;
import com.iMe.model.wallet.pin.WalletPinScreenArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.FingerprintController;
import timber.log.Timber;
/* compiled from: CreateWalletPinPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter */
/* loaded from: classes4.dex */
public final class CreateWalletPinPresenter extends BasePresenter<CreateWalletPinView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private ScreenStep currentScreenStep;
    private final String password;
    private String pin;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final CreatePinCodeScreenType screenType;
    private final String seed;
    private final TelegramControllersGateway telegramControllersGateway;

    /* renamed from: wallet  reason: collision with root package name */
    private final Wallet f1987wallet;

    /* compiled from: CreateWalletPinPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$WhenMappings */
    /* loaded from: classes4.dex */
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
        this.password = walletPinScreenArgs.getPassword();
        this.seed = walletPinScreenArgs.getSeed();
        this.f1987wallet = walletPinScreenArgs.getWallet();
        this.screenType = walletPinScreenArgs.getScreenType();
        this.pin = "";
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
            CreatePinCodeScreenType createPinCodeScreenType = this.screenType;
            if (createPinCodeScreenType instanceof CreatePinCodeScreenType.Change) {
                changePinCode();
                return;
            } else if (createPinCodeScreenType instanceof CreatePinCodeScreenType.Creation) {
                createWallet(((CreatePinCodeScreenType.Creation) createPinCodeScreenType).getCreationType());
                return;
            } else {
                return;
            }
        }
        onPinError(this.resourceManager.getString(C3419R.string.wallet_confirm_eth_pin_code_validation_not_match_error));
    }

    private final void changePinCode() {
        Completable observeOn = this.cryptoWalletInteractor.rewriteDataWithNewPin(this.pin).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Action() { // from class: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Action
            public final void run() {
                CreateWalletPinPresenter.this.savePinEncrypted();
                ((CreateWalletPinView) CreateWalletPinPresenter.this.getViewState()).onWalletPinCodeChangeSuccess();
            }
        }, new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$2
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

    private final void createWallet(WalletCreationType.Initial initial) {
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Create.INSTANCE)) {
            savePinEncrypted();
            CreateWalletPinView createWalletPinView = (CreateWalletPinView) getViewState();
            String str = this.password;
            String str2 = this.pin;
            Wallet wallet2 = this.f1987wallet;
            if (wallet2 == null) {
                return;
            }
            createWalletPinView.onWalletCreateSuccess(str, str2, wallet2);
        } else if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Import.INSTANCE)) {
            Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.importWallet(this.seed, this.password, this.pin, this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo716ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
            T viewState = getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Wallet>, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$createWallet$$inlined$subscribeWithErrorHandle$default$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
                    m1445invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1445invoke(Result<? extends Wallet> it) {
                    ResourceManager resourceManager;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends Wallet> result = it;
                    if (result instanceof Result.Success) {
                        CreateWalletPinPresenter.this.savePinEncrypted();
                        ((CreateWalletPinView) CreateWalletPinPresenter.this.getViewState()).onWalletImportSuccess();
                    } else if (result instanceof Result.Error) {
                        CreateWalletPinPresenter createWalletPinPresenter = CreateWalletPinPresenter.this;
                        ErrorModel error = ((Result.Error) result).getError();
                        resourceManager = CreateWalletPinPresenter.this.resourceManager;
                        createWalletPinPresenter.onPinError(error.getMessage(resourceManager));
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$createWallet$$inlined$subscribeWithErrorHandle$default$2
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
        createWalletPinView.onWalletPinCodeError();
    }

    private final boolean isValidPin(String str) {
        return str.length() == 4;
    }

    /* compiled from: CreateWalletPinPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
