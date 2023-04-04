package com.iMe.p032ui.wallet.crypto.enter.password;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p034rx.RxExtKt;
import com.iMe.utils.extentions.p034rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3316R;
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
            ((EnterWalletPasswordView) getViewState()).showDeleteWalletDialog(new DialogModel(this.resourceManager.getString(C3316R.string.wallet_enter_eth_password_delete_wallet_dialog_title), this.resourceManager.getString(C3316R.string.wallet_enter_eth_password_delete_wallet_dialog_description), this.resourceManager.getString(C3316R.string.common_cancel), this.resourceManager.getString(C3316R.string.wallet_enter_eth_password_delete_wallet_dialog_submit_btn)));
        }
    }

    public final void validatePassword(String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isPasswordForWallet(password, this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2140x376f1f3c(this, password)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2141x376f1f3d((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void deleteWallets() {
        Observable observeOn = CryptoWalletInteractor.deleteAllWallets$default(this.cryptoWalletInteractor, false, 1, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2136x3099948a(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2137x3099948b((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void subscribeOnRxEvents(Runnable onEventAction) {
        Intrinsics.checkNotNullParameter(onEventAction, "onEventAction");
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2138x3b75c083(onEventAction)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2139x3b75c084(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
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
