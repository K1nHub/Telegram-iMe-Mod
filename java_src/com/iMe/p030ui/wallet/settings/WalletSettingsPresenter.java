package com.iMe.p030ui.wallet.settings;

import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.settings.WalletSettingsPresenter */
/* loaded from: classes4.dex */
public final class WalletSettingsPresenter extends BasePresenter<WalletSettingsView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final RxEventBus rxEventBus;

    public WalletSettingsPresenter(CryptoAccessManager cryptoAccessManager, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.cryptoAccessManager = cryptoAccessManager;
        this.rxEventBus = rxEventBus;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToRxEvents();
        renderSettingsMenu();
    }

    private final void subscribeToRxEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.CryptoEvent, Unit>() { // from class: com.iMe.ui.wallet.settings.WalletSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
                m1806invoke(cryptoEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1806invoke(DomainRxEvents.CryptoEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = it;
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.AllWalletsReset.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletRestored.INSTANCE)) {
                    WalletSettingsPresenter.this.renderSettingsMenu();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.settings.WalletSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderSettingsMenu() {
        ((WalletSettingsView) getViewState()).renderSettingsItems(WalletSettingsItem.Main.INSTANCE.getItems(!this.cryptoAccessManager.getAllWallets().isEmpty()));
    }
}
