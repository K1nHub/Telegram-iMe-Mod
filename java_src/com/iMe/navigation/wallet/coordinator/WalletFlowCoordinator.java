package com.iMe.navigation.wallet.coordinator;

import android.app.Activity;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.LaunchActivity;
/* compiled from: WalletFlowCoordinator.kt */
/* loaded from: classes3.dex */
public final class WalletFlowCoordinator {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final PinCodeCoordinator pinCodeCoordinator;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletInteractor walletInteractor;

    static {
        new Companion(null);
    }

    public WalletFlowCoordinator(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, PinCodeCoordinator pinCodeCoordinator, ResourceManager resourceManager, SchedulersProvider schedulersProvider, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(pinCodeCoordinator, "pinCodeCoordinator");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
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

    public final void start(INavigationLayout actionBarLayout, WalletAuthBaseFragment nextFragment, boolean z) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(nextFragment, "nextFragment");
        Activity parentActivity = actionBarLayout.getParentActivity();
        final LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        if (CollectionExtKt.isSingletonList(cryptoPreferenceHelper.getSupportedNetworks()) || DateExtKt.now() - cryptoPreferenceHelper.getLastNetworksUpdateTime() > TimeUnit.HOURS.toMillis(6L)) {
            Observable<Result<List<Network>>> observeOn = this.walletInteractor.getSupportedNetworks().observeOn(this.schedulersProvider.mo698ui());
            final WalletFlowCoordinator$start$1$1 walletFlowCoordinator$start$1$1 = new WalletFlowCoordinator$start$1$1(launchActivity);
            Observable<Result<List<Network>>> doFinally = observeOn.doOnSubscribe(new Consumer() { // from class: com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletFlowCoordinator.start$lambda$6$lambda$0(Function1.this, obj);
                }
            }).doFinally(new Action() { // from class: com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() {
                    WalletFlowCoordinator.start$lambda$6$lambda$1(LaunchActivity.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "parentActivity = actionB…ty?.hideLoadingDialog() }");
            Intrinsics.checkNotNullExpressionValue(doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1612x3ecd0e99(cryptoPreferenceHelper, this, actionBarLayout, nextFragment, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1613x3ecd0e9a(null))), "viewState: BaseView? = n…Error.invoke()\n        })");
            return;
        }
        startWalletFlow(actionBarLayout, nextFragment, z);
    }

    public static final void start$lambda$6$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void start$lambda$6$lambda$1(LaunchActivity launchActivity) {
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
        if (!this.cryptoAccessManager.isAuthorized(this.cryptoPreferenceHelper.getCurrentBlockchainType()) && this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            this.pinCodeCoordinator.startAction(actionBarLayout, action, new PinCodeCoordinator.Args(EnterPinCodeScreenType.TOTAL_LOCK), z);
        } else {
            action.invoke();
        }
    }

    public final void startWalletFlow(INavigationLayout iNavigationLayout, WalletAuthBaseFragment walletAuthBaseFragment, boolean z) {
        Lazy<WalletConnectManager> lazy;
        if (!this.cryptoAccessManager.isAuthorized(this.cryptoPreferenceHelper.getCurrentBlockchainType()) && this.cryptoAccessManager.isAnyWalletCreated()) {
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

    /* compiled from: WalletFlowCoordinator.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
