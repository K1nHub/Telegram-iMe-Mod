package com.iMe.p031ui.wallet.crypto.wallet_connect;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: WalletConnectFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$presenter$2 */
/* loaded from: classes4.dex */
final class WalletConnectFragment$presenter$2 extends Lambda implements Function0<WalletConnectPresenter> {
    final /* synthetic */ WalletConnectFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectFragment$presenter$2(WalletConnectFragment walletConnectFragment) {
        super(0);
        this.this$0 = walletConnectFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletConnectPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2203x61ee5e3d(this.this$0, null, null));
        return (WalletConnectPresenter) lazy.getValue();
    }
}
