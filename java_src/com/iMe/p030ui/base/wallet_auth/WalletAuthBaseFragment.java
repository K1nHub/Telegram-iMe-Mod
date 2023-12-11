package com.iMe.p030ui.base.wallet_auth;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p029rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import timber.log.Timber;
/* compiled from: WalletAuthBaseFragment.kt */
/* renamed from: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment */
/* loaded from: classes3.dex */
public abstract class WalletAuthBaseFragment extends MvpFragment {
    private final Lazy cryptoAccessManager$delegate;
    private final Lazy cryptoPreferenceHelper$delegate;
    private final Lazy pinCodeCoordinator$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy rxEventBus$delegate;
    private final Lazy schedulersProvider$delegate;

    protected boolean shouldAskPinCode() {
        return true;
    }

    public WalletAuthBaseFragment() {
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        this.rxEventBus$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<RxEventBus>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.rx.RxEventBus, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final RxEventBus invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), qualifier, function0);
            }
        });
        this.resourceManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
        this.schedulersProvider$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<SchedulersProvider>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.rx.SchedulersProvider, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SchedulersProvider invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), qualifier, function0);
            }
        });
        this.cryptoAccessManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<CryptoAccessManager>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$special$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.manager.crypto.CryptoAccessManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoAccessManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), qualifier, function0);
            }
        });
        this.cryptoPreferenceHelper$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<CryptoPreferenceHelper>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$special$$inlined$inject$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.storage.domain.storage.CryptoPreferenceHelper] */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoPreferenceHelper invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), qualifier, function0);
            }
        });
        this.pinCodeCoordinator$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<PinCodeCoordinator>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$special$$inlined$inject$default$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.navigation.wallet.coordinator.PinCodeCoordinator, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final PinCodeCoordinator invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(PinCodeCoordinator.class), qualifier, function0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final RxEventBus getRxEventBus() {
        return (RxEventBus) this.rxEventBus$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    protected final CryptoAccessManager getCryptoAccessManager() {
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

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
        listenGlobalRxEvents();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        checkWalletLock();
    }

    private final void listenGlobalRxEvents() {
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1576invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1576invoke(RxEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (rxEvent instanceof DomainRxEvents.ForceWalletLogout ? true : rxEvent instanceof DomainRxEvents.AppUpdateRequired) {
                    final WalletAuthBaseFragment walletAuthBaseFragment = WalletAuthBaseFragment.this;
                    walletAuthBaseFragment.closeAllWalletFragments(new Function0<Unit>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$listenGlobalRxEvents$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            WalletHelper.safeRunWalletScreen$default(WalletAuthBaseFragment.this, null, 1, null);
                        }
                    });
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$2
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
    public final void closeAllWalletFragments(final Function0<Unit> function0) {
        if (isLastFragment()) {
            postViewActionDelayed(300L, new Callbacks$Callback() { // from class: com.iMe.ui.base.wallet_auth.WalletAuthBaseFragment$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletAuthBaseFragment.closeAllWalletFragments$lambda$1(WalletAuthBaseFragment.this, function0);
                }
            });
        } else {
            removeSelfFromStack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void closeAllWalletFragments$lambda$1(WalletAuthBaseFragment this$0, Function0 endAction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(endAction, "$endAction");
        this$0.finishFragment();
        endAction.invoke();
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
