package com.smedialink.p031ui.wallet.notifications;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: WalletNotificationsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.notifications.WalletNotificationsFragment$presenter$2 */
/* loaded from: classes3.dex */
final class WalletNotificationsFragment$presenter$2 extends Lambda implements Function0<WalletNotificationsPresenter> {
    final /* synthetic */ WalletNotificationsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletNotificationsFragment$presenter$2(WalletNotificationsFragment walletNotificationsFragment) {
        super(0);
        this.this$0 = walletNotificationsFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletNotificationsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2088x242f963f(this.this$0, null, null));
        return (WalletNotificationsPresenter) lazy.getValue();
    }
}
