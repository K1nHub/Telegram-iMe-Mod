package com.iMe.navigation.wallet.coordinator;

import android.app.Activity;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeResult;
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.LaunchActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PinCodeCoordinator.kt */
/* loaded from: classes3.dex */
public final class PinCodeCoordinator$start$1 extends Lambda implements Function2<EnterPinCodeResult, MvpFragment, Unit> {
    final /* synthetic */ WalletAuthFragment $nextFragment;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinCodeCoordinator$start$1(WalletAuthFragment walletAuthFragment) {
        super(2);
        this.$nextFragment = walletAuthFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(EnterPinCodeResult enterPinCodeResult, MvpFragment mvpFragment) {
        invoke2(enterPinCodeResult, mvpFragment);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(EnterPinCodeResult result, MvpFragment fragment) {
        Lazy<WalletConnectManager> lazy;
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        if (result instanceof EnterPinCodeResult.Success) {
            fragment.presentFragment(this.$nextFragment, true);
            Activity parentActivity = this.$nextFragment.getParentActivity();
            LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
            if (launchActivity == null || (lazy = launchActivity.walletConnectManager) == null || !lazy.isInitialized()) {
                return;
            }
            lazy.getValue().connectToStoredSessions();
        }
    }
}
