package com.iMe.p031ui.wallet.swap;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProtocolsFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletSwapProtocolsFragment$presenter$2 extends Lambda implements Function0<WalletSwapProtocolsPresenter> {
    final /* synthetic */ WalletSwapProtocolsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProtocolsFragment$presenter$2(WalletSwapProtocolsFragment walletSwapProtocolsFragment) {
        super(0);
        this.this$0 = walletSwapProtocolsFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletSwapProtocolsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2414x4e80c69f(this.this$0, null, null));
        return (WalletSwapProtocolsPresenter) lazy.getValue();
    }
}
