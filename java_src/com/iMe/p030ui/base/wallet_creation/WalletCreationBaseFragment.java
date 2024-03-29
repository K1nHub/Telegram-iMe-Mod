package com.iMe.p030ui.base.wallet_creation;

import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: WalletCreationBaseFragment.kt */
/* renamed from: com.iMe.ui.base.wallet_creation.WalletCreationBaseFragment */
/* loaded from: classes.dex */
public abstract class WalletCreationBaseFragment extends WalletAuthBaseFragment {
    private final boolean shouldOpenCreationSuccess = true;

    protected boolean getShouldOpenCreationSuccess() {
        return this.shouldOpenCreationSuccess;
    }

    @Override // com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
        super.onViewReady();
        listenGlobalRxEvents();
    }

    private final void listenGlobalRxEvents() {
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.class).observeOn(rxEventBus.getSchedulersProvider().mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents, Unit>() { // from class: com.iMe.ui.base.wallet_creation.WalletCreationBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents domainRxEvents) {
                m1579invoke(domainRxEvents);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1579invoke(DomainRxEvents it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents domainRxEvents = it;
                if (domainRxEvents instanceof DomainRxEvents.WalletCreated ? true : domainRxEvents instanceof DomainRxEvents.WalletRestored) {
                    WalletCreationBaseFragment.this.closeWalletCreationFragment();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.base.wallet_creation.WalletCreationBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$2
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
        autoDispose(subscribe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeWalletCreationFragment() {
        if (!isLastFragment()) {
            removeSelfFromStack();
        } else if (getShouldOpenCreationSuccess()) {
            presentFragment(CreateWalletFragment.Companion.newInstance(CreateWalletScreenType.Ready.INSTANCE), true);
        } else {
            finishFragment();
        }
    }
}
