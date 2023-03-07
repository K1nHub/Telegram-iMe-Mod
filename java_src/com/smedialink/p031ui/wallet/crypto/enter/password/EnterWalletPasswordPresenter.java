package com.smedialink.p031ui.wallet.crypto.enter.password;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: EnterWalletPasswordPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter */
/* loaded from: classes3.dex */
public final class EnterWalletPasswordPresenter extends BasePresenter<EnterWalletPasswordView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;

    static {
        new Companion(null);
    }

    public EnterWalletPasswordPresenter(ResourceManager resourceManager, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, RxEventBus rxEventBus, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.resourceManager = resourceManager;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
    }

    public final void onForgotPasscodeOptionSelected(int i) {
        if (i == 0) {
            ((EnterWalletPasswordView) getViewState()).showRestoreWalletScreen(this.cryptoAccessManager.getLastLoggedInAddress(this.cryptoPreferenceHelper.getCurrentBlockchainType()));
        } else if (i != 1) {
        } else {
            ((EnterWalletPasswordView) getViewState()).showDeleteWalletDialog(new DialogModel(this.resourceManager.getString(C3158R.string.wallet_enter_eth_password_delete_wallet_dialog_title), this.resourceManager.getString(C3158R.string.wallet_enter_eth_password_delete_wallet_dialog_description), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_enter_eth_password_delete_wallet_dialog_submit_btn)));
        }
    }

    public final void validatePassword(final String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isPasswordForWallet(password, this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                CryptoAccessManager cryptoAccessManager;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    EnterWalletPasswordView enterWalletPasswordView = (EnterWalletPasswordView) EnterWalletPasswordPresenter.this.getViewState();
                    if (((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                        String str = password;
                        cryptoAccessManager = EnterWalletPasswordPresenter.this.cryptoAccessManager;
                        cryptoPreferenceHelper = EnterWalletPasswordPresenter.this.cryptoPreferenceHelper;
                        enterWalletPasswordView.onSuccessUnlockWallet(str, cryptoAccessManager.getLastLoggedInAddress(cryptoPreferenceHelper.getCurrentBlockchainType()));
                        return;
                    }
                    resourceManager2 = EnterWalletPasswordPresenter.this.resourceManager;
                    enterWalletPasswordView.showToast(resourceManager2.getString(C3158R.string.wallet_enter_eth_password_validation_error));
                    enterWalletPasswordView.onCodeErrorShake();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = EnterWalletPasswordPresenter.this.resourceManager;
                    ((EnterWalletPasswordView) EnterWalletPasswordPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$2
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

    public final void deleteWallets() {
        Observable observeOn = CryptoWalletInteractor.deleteAllWallets$default(this.cryptoWalletInteractor, false, 1, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((EnterWalletPasswordView) EnterWalletPasswordPresenter.this.getViewState()).onSuccessDeleteWallet();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = EnterWalletPasswordPresenter.this.resourceManager;
                    ((EnterWalletPasswordView) EnterWalletPasswordPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$2
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

    public final void subscribeOnRxEvents(final Runnable onEventAction) {
        Intrinsics.checkNotNullParameter(onEventAction, "onEventAction");
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = (DomainRxEvents.CryptoEvent) it;
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRecreateWalletByPassword.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRestoreWallet.INSTANCE)) {
                    onEventAction.run();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$2
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
    }

    /* compiled from: EnterWalletPasswordPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
