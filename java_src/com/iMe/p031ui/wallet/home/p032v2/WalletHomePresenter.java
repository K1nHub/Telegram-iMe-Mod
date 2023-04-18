package com.iMe.p031ui.wallet.home.p032v2;

import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletHomePresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.v2.WalletHomePresenter */
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
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2202x5fff07b7(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2203x5fff07b8(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* compiled from: WalletHomePresenter.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.WalletHomePresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
