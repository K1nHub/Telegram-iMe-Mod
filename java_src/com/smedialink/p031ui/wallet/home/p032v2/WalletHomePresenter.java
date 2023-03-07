package com.smedialink.p031ui.wallet.home.p032v2;

import com.smedialink.common.AppRxEvents;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletHomePresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.home.v2.WalletHomePresenter */
/* loaded from: classes3.dex */
public final class WalletHomePresenter extends BasePresenter<WalletHomeView> {
    private final RxEventBus rxEventBus;

    static {
        new Companion(null);
    }

    public WalletHomePresenter(RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.rxEventBus = rxEventBus;
    }

    public final void selectTab(int i) {
        ((WalletHomeView) getViewState()).onTabSelected(i);
    }

    public final void setupNavigationRouter() {
        ((WalletHomeView) getViewState()).onSetupNavigationRouter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        listenEvents();
        ((WalletHomeView) getViewState()).loadTabsInfo();
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = (RxEvent) it;
                if (rxEvent instanceof AppRxEvents.UpdateWalletScreen) {
                    ((WalletHomeView) WalletHomePresenter.this.getViewState()).loadBalances();
                } else if (rxEvent instanceof AppRxEvents.BinanceOpenAuthScreen) {
                    ((WalletHomeView) WalletHomePresenter.this.getViewState()).onTabSelected(1);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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

    /* compiled from: WalletHomePresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.home.v2.WalletHomePresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
