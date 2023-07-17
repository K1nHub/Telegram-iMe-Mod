package com.iMe.p031ui.wallet.settings;

import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
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
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2374x89eec84f(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2375x89eec850(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderSettingsMenu() {
        ((WalletSettingsView) getViewState()).renderSettingsItems(WalletSettingsItem.Main.INSTANCE.getItems(!this.cryptoAccessManager.getAllWallets().isEmpty()));
    }
}
