package com.iMe.navigation.wallet.coordinator;

import android.app.Activity;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeResult;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.wallet.crypto.enter.pin.EnterWalletPinFragment;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.LaunchActivity;
/* compiled from: PinCodeCoordinator.kt */
/* loaded from: classes3.dex */
public final class PinCodeCoordinator {
    public final void start(INavigationLayout actionBarLayout, WalletAuthBaseFragment nextFragment) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(nextFragment, "nextFragment");
        start$default(this, actionBarLayout, nextFragment, null, false, 12, null);
    }

    public static /* synthetic */ void lock$default(PinCodeCoordinator pinCodeCoordinator, INavigationLayout iNavigationLayout, EnterPinCodeScreenType enterPinCodeScreenType, int i, Object obj) {
        if ((i & 2) != 0) {
            enterPinCodeScreenType = EnterPinCodeScreenType.TOTAL_LOCK;
        }
        pinCodeCoordinator.lock(iNavigationLayout, enterPinCodeScreenType);
    }

    public static /* synthetic */ void start$default(PinCodeCoordinator pinCodeCoordinator, INavigationLayout iNavigationLayout, WalletAuthBaseFragment walletAuthBaseFragment, Args args, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            args = new Args(EnterPinCodeScreenType.CHECK);
        }
        if ((i & 8) != 0) {
            z = false;
        }
        pinCodeCoordinator.start(iNavigationLayout, walletAuthBaseFragment, args, z);
    }

    public final void start(INavigationLayout actionBarLayout, final WalletAuthBaseFragment nextFragment, Args args, boolean z) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(nextFragment, "nextFragment");
        Intrinsics.checkNotNullParameter(args, "args");
        actionBarLayout.presentFragment(EnterWalletPinFragment.Companion.newInstance(args.getLockType(), new Function2<EnterPinCodeResult, MvpFragment, Unit>() { // from class: com.iMe.navigation.wallet.coordinator.PinCodeCoordinator$start$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
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
                    fragment.presentFragment(WalletAuthBaseFragment.this, true);
                    Activity parentActivity = WalletAuthBaseFragment.this.getParentActivity();
                    LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
                    if (launchActivity == null || (lazy = launchActivity.walletConnectManager) == null || !lazy.isInitialized()) {
                        return;
                    }
                    lazy.getValue().connectToStoredSessions();
                }
            }
        }), z);
    }

    public final void lock(INavigationLayout actionBarLayout, EnterPinCodeScreenType lockType) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(lockType, "lockType");
        List<BaseFragment> fragmentStack = actionBarLayout.getFragmentStack();
        Intrinsics.checkNotNullExpressionValue(fragmentStack, "fragmentStack");
        boolean z = false;
        if (!(fragmentStack instanceof Collection) || !fragmentStack.isEmpty()) {
            Iterator<T> it = fragmentStack.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((BaseFragment) it.next()) instanceof EnterWalletPinFragment) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            return;
        }
        actionBarLayout.presentFragment(EnterWalletPinFragment.Companion.newInstance(lockType, new Function2<EnterPinCodeResult, MvpFragment, Unit>() { // from class: com.iMe.navigation.wallet.coordinator.PinCodeCoordinator$lock$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(EnterPinCodeResult enterPinCodeResult, MvpFragment mvpFragment) {
                invoke2(enterPinCodeResult, mvpFragment);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(EnterPinCodeResult enterPinCodeResult, MvpFragment fragment) {
                Intrinsics.checkNotNullParameter(enterPinCodeResult, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(fragment, "fragment");
                fragment.finishFragment();
            }
        }), false, true, true, false);
    }

    public final void startAction(INavigationLayout actionBarLayout, final Callbacks$Callback action, Args args, boolean z) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(args, "args");
        actionBarLayout.presentFragment(EnterWalletPinFragment.Companion.newInstance(args.getLockType(), new Function2<EnterPinCodeResult, MvpFragment, Unit>() { // from class: com.iMe.navigation.wallet.coordinator.PinCodeCoordinator$startAction$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(EnterPinCodeResult enterPinCodeResult, MvpFragment mvpFragment) {
                invoke2(enterPinCodeResult, mvpFragment);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(EnterPinCodeResult result, MvpFragment fragment) {
                Intrinsics.checkNotNullParameter(result, "result");
                Intrinsics.checkNotNullParameter(fragment, "fragment");
                if (result instanceof EnterPinCodeResult.Success) {
                    Callbacks$Callback.this.invoke();
                    fragment.onBackPressed();
                }
            }
        }), z);
    }

    /* compiled from: PinCodeCoordinator.kt */
    /* loaded from: classes3.dex */
    public static final class Args {
        private final EnterPinCodeScreenType lockType;

        public Args() {
            this(null, 1, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Args) && this.lockType == ((Args) obj).lockType;
        }

        public int hashCode() {
            return this.lockType.hashCode();
        }

        public String toString() {
            return "Args(lockType=" + this.lockType + ')';
        }

        public Args(EnterPinCodeScreenType lockType) {
            Intrinsics.checkNotNullParameter(lockType, "lockType");
            this.lockType = lockType;
        }

        public /* synthetic */ Args(EnterPinCodeScreenType enterPinCodeScreenType, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? EnterPinCodeScreenType.TOTAL_LOCK : enterPinCodeScreenType);
        }

        public final EnterPinCodeScreenType getLockType() {
            return this.lockType;
        }
    }
}
