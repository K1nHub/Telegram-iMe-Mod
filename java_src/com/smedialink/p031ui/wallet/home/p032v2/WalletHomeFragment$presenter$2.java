package com.smedialink.p031ui.wallet.home.p032v2;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: WalletHomeFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.WalletHomeFragment$presenter$2 */
/* loaded from: classes3.dex */
final class WalletHomeFragment$presenter$2 extends Lambda implements Function0<WalletHomePresenter> {
    final /* synthetic */ WalletHomeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeFragment$presenter$2(WalletHomeFragment walletHomeFragment) {
        super(0);
        this.this$0 = walletHomeFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletHomePresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletHomeFragment$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, null));
        return (WalletHomePresenter) lazy.getValue();
    }
}
