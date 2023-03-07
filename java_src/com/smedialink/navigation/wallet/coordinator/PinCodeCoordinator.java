package com.smedialink.navigation.wallet.coordinator;

import com.smedialink.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.wallet.crypto.enter.pin.EnterWalletPinFragment;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.INavigationLayout;
/* compiled from: PinCodeCoordinator.kt */
/* loaded from: classes3.dex */
public final class PinCodeCoordinator {
    public static /* synthetic */ void lock$default(PinCodeCoordinator pinCodeCoordinator, INavigationLayout iNavigationLayout, EnterPinCodeScreenType enterPinCodeScreenType, int i, Object obj) {
        if ((i & 2) != 0) {
            enterPinCodeScreenType = EnterPinCodeScreenType.TOTAL_LOCK;
        }
        pinCodeCoordinator.lock(iNavigationLayout, enterPinCodeScreenType);
    }

    public static /* synthetic */ void start$default(PinCodeCoordinator pinCodeCoordinator, INavigationLayout iNavigationLayout, WalletAuthFragment walletAuthFragment, Args args, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            args = new Args(EnterPinCodeScreenType.CHECK);
        }
        if ((i & 8) != 0) {
            z = false;
        }
        pinCodeCoordinator.start(iNavigationLayout, walletAuthFragment, args, z);
    }

    public final void start(INavigationLayout actionBarLayout, WalletAuthFragment nextFragment, Args args, boolean z) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(nextFragment, "nextFragment");
        Intrinsics.checkNotNullParameter(args, "args");
        actionBarLayout.presentFragment(EnterWalletPinFragment.Companion.newInstance(args.getLockType(), new PinCodeCoordinator$start$1(nextFragment)), z);
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
        actionBarLayout.presentFragment(EnterWalletPinFragment.Companion.newInstance(lockType, PinCodeCoordinator$lock$1.INSTANCE), false, true, true, false);
    }

    public final void startAction(INavigationLayout actionBarLayout, Callbacks$Callback action, Args args, boolean z) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(args, "args");
        actionBarLayout.presentFragment(EnterWalletPinFragment.Companion.newInstance(args.getLockType(), new PinCodeCoordinator$startAction$1(action)), z);
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
