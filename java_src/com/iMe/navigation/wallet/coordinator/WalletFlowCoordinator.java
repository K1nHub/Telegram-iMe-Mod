package com.iMe.navigation.wallet.coordinator;

import android.app.Activity;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Action;
import java.util.List;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.LaunchActivity;
import timber.log.Timber;
/* compiled from: WalletFlowCoordinator.kt */
/* loaded from: classes4.dex */
public final class WalletFlowCoordinator {
    private final CryptoAccessManager cryptoAccessManager;
    private final PinCodeCoordinator pinCodeCoordinator;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletInteractor walletInteractor;

    public WalletFlowCoordinator(CryptoAccessManager cryptoAccessManager, PinCodeCoordinator pinCodeCoordinator, ResourceManager resourceManager, SchedulersProvider schedulersProvider, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(pinCodeCoordinator, "pinCodeCoordinator");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.cryptoAccessManager = cryptoAccessManager;
        this.pinCodeCoordinator = pinCodeCoordinator;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.walletInteractor = walletInteractor;
    }

    public static /* synthetic */ void start$default(WalletFlowCoordinator walletFlowCoordinator, INavigationLayout iNavigationLayout, WalletAuthBaseFragment walletAuthBaseFragment, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        walletFlowCoordinator.start(iNavigationLayout, walletAuthBaseFragment, z);
    }

    /* JADX WARN: Type inference failed for: r13v2, types: [io.reactivex.disposables.Disposable, T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [io.reactivex.disposables.Disposable, T, java.lang.Object] */
    public final void start(final INavigationLayout actionBarLayout, final WalletAuthBaseFragment nextFragment, final boolean z) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(nextFragment, "nextFragment");
        Activity parentActivity = actionBarLayout.getParentActivity();
        final LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ?? disposed = Disposables.disposed();
        Intrinsics.checkNotNullExpressionValue(disposed, "disposed()");
        ref$ObjectRef.element = disposed;
        Observable<Result<List<Network>>> doFinally = this.walletInteractor.getSupportedNetworksWithUpdateCheck().observeOn(this.schedulersProvider.mo716ui()).doFinally(new Action() { // from class: com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletFlowCoordinator.start$lambda$0(LaunchActivity.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "walletInteractor\n       …ty?.hideLoadingDialog() }");
        ?? subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends Network>>, Unit>() { // from class: com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Network>> result) {
                m1308invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1308invoke(Result<? extends List<? extends Network>> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends Network>> result = it;
                if (result instanceof Result.Success) {
                    WalletFlowCoordinator.this.startWalletFlow(actionBarLayout, nextFragment, z);
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletFlowCoordinator.this.resourceManager;
                    ContextExtKt.toast(error.getMessage(resourceManager));
                    WalletFlowCoordinator.this.startWalletFlow(actionBarLayout, nextFragment, z);
                } else if (result instanceof Result.Loading) {
                    Ref$BooleanRef ref$BooleanRef2 = ref$BooleanRef;
                    if (ref$BooleanRef2.element) {
                        return;
                    }
                    ref$BooleanRef2.element = true;
                    LaunchActivity launchActivity2 = launchActivity;
                    if (launchActivity2 != null) {
                        final Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                        launchActivity2.showLoadingDialog(true, new Callbacks$Callback() { // from class: com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator$start$2$1
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                ref$ObjectRef2.element.dispose();
                            }
                        });
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$2
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
        ref$ObjectRef.element = subscribe;
    }

    public static final void start$lambda$0(LaunchActivity launchActivity) {
        if (launchActivity != null) {
            launchActivity.hideLoadingDialog();
        }
    }

    public static /* synthetic */ void startAction$default(WalletFlowCoordinator walletFlowCoordinator, INavigationLayout iNavigationLayout, Callbacks$Callback callbacks$Callback, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        walletFlowCoordinator.startAction(iNavigationLayout, callbacks$Callback, z);
    }

    public final void startAction(INavigationLayout actionBarLayout, Callbacks$Callback action, boolean z) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(action, "action");
        if (!this.cryptoAccessManager.isCurrentBlockchainAuthorized() && this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            this.pinCodeCoordinator.startAction(actionBarLayout, action, new PinCodeCoordinator.Args(EnterPinCodeScreenType.TOTAL_LOCK), z);
        } else {
            action.invoke();
        }
    }

    public final void startWalletFlow(INavigationLayout iNavigationLayout, WalletAuthBaseFragment walletAuthBaseFragment, boolean z) {
        Lazy<WalletConnectManager> lazy;
        if (!this.cryptoAccessManager.isCurrentBlockchainAuthorized() && this.cryptoAccessManager.isAnyWalletCreated()) {
            this.pinCodeCoordinator.start(iNavigationLayout, walletAuthBaseFragment, new PinCodeCoordinator.Args(EnterPinCodeScreenType.TOTAL_LOCK), z);
            return;
        }
        iNavigationLayout.presentFragment(walletAuthBaseFragment, z);
        Activity parentActivity = walletAuthBaseFragment.getParentActivity();
        LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
        if (launchActivity == null || (lazy = launchActivity.walletConnectManager) == null || !lazy.isInitialized()) {
            return;
        }
        lazy.getValue().connectToStoredSessions();
    }
}
