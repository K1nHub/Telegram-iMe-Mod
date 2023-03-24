package com.smedialink.p031ui.base;

import com.smedialink.navigation.wallet.coordinator.PinCodeCoordinator;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.INavigationLayout;
/* compiled from: WalletAuthFragment.kt */
/* renamed from: com.smedialink.ui.base.WalletAuthFragment */
/* loaded from: classes3.dex */
public abstract class WalletAuthFragment extends MvpFragment {
    private final Lazy cryptoAccessManager$delegate;
    private final Lazy cryptoPreferenceHelper$delegate;
    private final Lazy pinCodeCoordinator$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy rxEventBus$delegate;

    public boolean shouldAskPinCode() {
        return true;
    }

    public WalletAuthFragment() {
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        this.rxEventBus$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletAuthFragment$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletAuthFragment$special$$inlined$inject$default$2(this, null, null));
        this.cryptoAccessManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletAuthFragment$special$$inlined$inject$default$3(this, null, null));
        this.cryptoPreferenceHelper$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletAuthFragment$special$$inlined$inject$default$4(this, null, null));
        this.pinCodeCoordinator$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletAuthFragment$special$$inlined$inject$default$5(this, null, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final RxEventBus getRxEventBus() {
        return (RxEventBus) this.rxEventBus$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final CryptoAccessManager getCryptoAccessManager() {
        return (CryptoAccessManager) this.cryptoAccessManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final CryptoPreferenceHelper getCryptoPreferenceHelper() {
        return (CryptoPreferenceHelper) this.cryptoPreferenceHelper$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final PinCodeCoordinator getPinCodeCoordinator() {
        return (PinCodeCoordinator) this.pinCodeCoordinator$delegate.getValue();
    }

    public final void closeAllWalletFragments(final Function0<Unit> endAction) {
        Intrinsics.checkNotNullParameter(endAction, "endAction");
        List<BaseFragment> fragmentStack = this.parentLayout.getFragmentStack();
        Intrinsics.checkNotNullExpressionValue(fragmentStack, "parentLayout.fragmentStack");
        if (Intrinsics.areEqual(CollectionsKt.last((List<? extends Object>) fragmentStack), this)) {
            postViewActionDelayed(300L, new Callbacks$Callback() { // from class: com.smedialink.ui.base.WalletAuthFragment$$ExternalSyntheticLambda0
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletAuthFragment.closeAllWalletFragments$lambda$0(WalletAuthFragment.this, endAction);
                }
            });
        } else {
            removeSelfFromStack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void closeAllWalletFragments$lambda$0(WalletAuthFragment this$0, Function0 endAction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(endAction, "$endAction");
        this$0.finishFragment();
        endAction.invoke();
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
        listenGlobalRxEvents();
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        checkWalletLock();
    }

    private final void listenGlobalRxEvents() {
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1873x905d501f(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1874x905d5020(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    private final void checkWalletLock() {
        if (!getCryptoAccessManager().isAuthorized(getCryptoPreferenceHelper().getCurrentBlockchainType()) && getCryptoAccessManager().isCurrentBlockchainWalletCreated() && shouldAskPinCode()) {
            dismissCurrentDialog();
            PinCodeCoordinator pinCodeCoordinator = getPinCodeCoordinator();
            INavigationLayout parentLayout = this.parentLayout;
            Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
            PinCodeCoordinator.lock$default(pinCodeCoordinator, parentLayout, null, 2, null);
        }
    }
}
