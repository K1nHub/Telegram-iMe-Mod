package com.iMe.p032ui.wallet.common;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletRootFragment.kt */
/* renamed from: com.iMe.ui.wallet.common.WalletRootFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class WalletRootFragment$presenter$2 extends Lambda implements Function0<WalletRootPresenter> {
    final /* synthetic */ WalletRootFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRootFragment$presenter$2(WalletRootFragment walletRootFragment) {
        super(0);
        this.this$0 = walletRootFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletRootPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletRootFragment$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, null));
        return (WalletRootPresenter) lazy.getValue();
    }
}
