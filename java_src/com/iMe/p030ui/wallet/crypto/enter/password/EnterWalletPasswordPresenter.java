package com.iMe.p030ui.wallet.crypto.enter.password;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3634R;
import timber.log.Timber;
/* compiled from: EnterWalletPasswordPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter */
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
            ((EnterWalletPasswordView) getViewState()).showDeleteWalletDialog(new DialogModel(this.resourceManager.getString(C3634R.string.wallet_enter_eth_password_delete_wallet_dialog_title), this.resourceManager.getString(C3634R.string.wallet_enter_eth_password_delete_wallet_dialog_description), this.resourceManager.getString(C3634R.string.common_cancel), this.resourceManager.getString(C3634R.string.wallet_enter_eth_password_delete_wallet_dialog_submit_btn)));
        }
    }

    public final void validatePassword(final String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidPasswordForWallet(password, this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1639invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1639invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                CryptoAccessManager cryptoAccessManager;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    EnterWalletPasswordView enterWalletPasswordView = (EnterWalletPasswordView) EnterWalletPasswordPresenter.this.getViewState();
                    if (!((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                        resourceManager2 = EnterWalletPasswordPresenter.this.resourceManager;
                        enterWalletPasswordView.showToast(resourceManager2.getString(C3634R.string.wallet_enter_eth_password_validation_error));
                        enterWalletPasswordView.onWalletPinCodeError();
                        return;
                    }
                    String str = password;
                    cryptoAccessManager = EnterWalletPasswordPresenter.this.cryptoAccessManager;
                    cryptoPreferenceHelper = EnterWalletPasswordPresenter.this.cryptoPreferenceHelper;
                    enterWalletPasswordView.onSuccessUnlockWallet(str, cryptoAccessManager.getLastLoggedInAddress(cryptoPreferenceHelper.getCurrentBlockchainType()));
                } else if (result instanceof Result.Error) {
                    resourceManager = EnterWalletPasswordPresenter.this.resourceManager;
                    ((EnterWalletPasswordView) EnterWalletPasswordPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$2
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

    public final void deleteWallets() {
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.deleteAllWallets().observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1637invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1637invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    ((EnterWalletPasswordView) EnterWalletPasswordPresenter.this.getViewState()).onSuccessDeleteWallet();
                } else if (result instanceof Result.Error) {
                    resourceManager = EnterWalletPasswordPresenter.this.resourceManager;
                    ((EnterWalletPasswordView) EnterWalletPasswordPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$2
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

    public final void subscribeOnRxEvents(final Runnable onEventAction) {
        Intrinsics.checkNotNullParameter(onEventAction, "onEventAction");
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.CryptoEvent, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
                m1638invoke(cryptoEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1638invoke(DomainRxEvents.CryptoEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = it;
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRecreateWalletByPassword.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletRestored.INSTANCE)) {
                    onEventAction.run();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* compiled from: EnterWalletPasswordPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
