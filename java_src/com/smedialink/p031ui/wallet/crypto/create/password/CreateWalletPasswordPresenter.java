package com.smedialink.p031ui.wallet.crypto.create.password;

import com.smedialink.model.common.ScreenStep;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: CreateWalletPasswordPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.create.password.CreateWalletPasswordPresenter */
/* loaded from: classes3.dex */
public final class CreateWalletPasswordPresenter extends BasePresenter<CreateWalletPasswordView> {
    private String password;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;

    static {
        new Companion(null);
    }

    public CreateWalletPasswordPresenter(ResourceManager resourceManager, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        ScreenStep screenStep = ScreenStep.FIRST_STEP;
        this.password = "";
    }

    public final boolean validatePassword(String pass) {
        Intrinsics.checkNotNullParameter(pass, "pass");
        if (isValidPasswordLength(pass)) {
            this.password = pass;
            return true;
        }
        CreateWalletPasswordView createWalletPasswordView = (CreateWalletPasswordView) getViewState();
        createWalletPasswordView.showToast(this.resourceManager.getString(C3158R.string.wallet_create_eth_password_validation_length_error));
        createWalletPasswordView.onCodeErrorShake();
        return false;
    }

    public final boolean isValidPasswordLength(String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        return password.length() >= 8;
    }

    public final void checkPasswordMatch(String confirmPass) {
        Intrinsics.checkNotNullParameter(confirmPass, "confirmPass");
        CreateWalletPasswordView createWalletPasswordView = (CreateWalletPasswordView) getViewState();
        if (Intrinsics.areEqual(this.password, confirmPass)) {
            createWalletPasswordView.onPasswordMatch(this.password);
            return;
        }
        createWalletPasswordView.showToast(this.resourceManager.getString(C3158R.string.wallet_confirm_eth_password_validation_not_match_error));
        createWalletPasswordView.onCodeErrorShake();
    }

    public final void subscribeOnRxEvents(final Runnable onEventAction) {
        Intrinsics.checkNotNullParameter(onEventAction, "onEventAction");
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.password.CreateWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = (DomainRxEvents.CryptoEvent) it;
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRecreateWalletByPassword.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRestoreWallet.INSTANCE)) {
                    onEventAction.run();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.create.password.CreateWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$2
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

    /* compiled from: CreateWalletPasswordPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.create.password.CreateWalletPasswordPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
