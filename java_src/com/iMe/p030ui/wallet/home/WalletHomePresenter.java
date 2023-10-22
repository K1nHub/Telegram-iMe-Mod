package com.iMe.p030ui.wallet.home;

import com.iMe.common.AppRxEvents;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p029rx.event.RxEvent;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletHomePresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.WalletHomePresenter */
/* loaded from: classes4.dex */
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
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.home.WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1716invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1716invoke(RxEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (rxEvent instanceof AppRxEvents.UpdateWalletScreen) {
                    ((WalletHomeView) WalletHomePresenter.this.getViewState()).loadBalances();
                } else if (rxEvent instanceof AppRxEvents.BinanceOpenAuthScreen) {
                    ((WalletHomeView) WalletHomePresenter.this.getViewState()).onTabSelected(1);
                } else if (rxEvent instanceof DomainRxEvents.SelectWalletCryptoTab) {
                    ((WalletHomeView) WalletHomePresenter.this.getViewState()).onTabSelected(0);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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

    /* compiled from: WalletHomePresenter.kt */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomePresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
