package com.iMe.navigation.wallet.coordinator;

import android.app.Activity;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p044ui.ActionBar.INavigationLayout;
import org.telegram.p044ui.LaunchActivity;
/* compiled from: WalletFlowCoordinator.kt */
/* loaded from: classes3.dex */
public final class WalletFlowCoordinator {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final PinCodeCoordinator pinCodeCoordinator;

    public WalletFlowCoordinator(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, PinCodeCoordinator pinCodeCoordinator) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(pinCodeCoordinator, "pinCodeCoordinator");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.pinCodeCoordinator = pinCodeCoordinator;
    }

    public static /* synthetic */ void start$default(WalletFlowCoordinator walletFlowCoordinator, INavigationLayout iNavigationLayout, WalletAuthFragment walletAuthFragment, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        walletFlowCoordinator.start(iNavigationLayout, walletAuthFragment, z);
    }

    public final void start(INavigationLayout actionBarLayout, WalletAuthFragment nextFragment, boolean z) {
        Lazy<WalletConnectManager> lazy;
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(nextFragment, "nextFragment");
        if (!this.cryptoAccessManager.isAuthorized(this.cryptoPreferenceHelper.getCurrentBlockchainType()) && this.cryptoAccessManager.isAnyWalletCreated()) {
            this.pinCodeCoordinator.start(actionBarLayout, nextFragment, new PinCodeCoordinator.Args(EnterPinCodeScreenType.TOTAL_LOCK), z);
            return;
        }
        actionBarLayout.presentFragment(nextFragment, z);
        Activity parentActivity = nextFragment.getParentActivity();
        LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
        if (launchActivity == null || (lazy = launchActivity.walletConnectManager) == null || !lazy.isInitialized()) {
            return;
        }
        lazy.getValue().connectToStoredSessions();
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
}
