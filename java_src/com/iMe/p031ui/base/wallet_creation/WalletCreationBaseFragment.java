package com.iMe.p031ui.base.wallet_creation;

import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletCreationBaseFragment.kt */
/* renamed from: com.iMe.ui.base.wallet_creation.WalletCreationBaseFragment */
/* loaded from: classes.dex */
public abstract class WalletCreationBaseFragment extends WalletAuthBaseFragment {
    private final boolean shouldOpenCreationSuccess = true;

    protected boolean getShouldOpenCreationSuccess() {
        return this.shouldOpenCreationSuccess;
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        super.onViewReady();
        listenGlobalRxEvents();
    }

    private final void listenGlobalRxEvents() {
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2000xdc037177(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2001xdc037178(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
