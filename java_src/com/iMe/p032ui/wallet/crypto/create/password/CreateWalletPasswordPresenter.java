package com.iMe.p032ui.wallet.crypto.create.password;

import com.iMe.model.common.ScreenStep;
import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p034rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3316R;
/* compiled from: CreateWalletPasswordPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordPresenter */
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
        createWalletPasswordView.showToast(this.resourceManager.getString(C3316R.string.wallet_create_eth_password_validation_length_error));
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
        createWalletPasswordView.showToast(this.resourceManager.getString(C3316R.string.wallet_confirm_eth_password_validation_not_match_error));
        createWalletPasswordView.onCodeErrorShake();
    }

    public final void subscribeOnRxEvents(Runnable onEventAction) {
        Intrinsics.checkNotNullParameter(onEventAction, "onEventAction");
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2128xbb8b799f(onEventAction)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2129xbb8b79a0(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* compiled from: CreateWalletPasswordPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
